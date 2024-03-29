module Spree
  module Admin
    class TaxonsController < Spree::Admin::BaseController

      respond_to :html, :json, :js

      def index

      end

      def search
        if params[:ids]
          @taxons = Spree::Taxon.where(:id => params[:ids].split(','))
        else
          @taxons = Spree::Taxon.limit(20).ransack(:name_cont => params[:q]).result
        end
      end

      def create
        @taxonomy = Taxonomy.find(params[:taxonomy_id])
        @taxon = @taxonomy.taxons.build(params[:taxon])
        if @taxon.save
          respond_with(@taxon) do |format|
            format.json {render :json => @taxon.to_json }
          end
        else
          flash[:error] = Spree.t('errors.messages.could_not_create_taxon')
          respond_with(@taxon) do |format|
            format.html { redirect_to @taxonomy ? edit_admin_taxonomy_url(@taxonomy) : admin_taxonomies_url }
          end
        end
      end

      def edit
        @taxonomy = Taxonomy.find(params[:taxonomy_id])
        @taxon = @taxonomy.taxons.find(params[:id])
        @products = @taxon.products                                # Add here
        @permalink_part = @taxon.permalink.split("/").last
      end

      def update
        @taxonomy = Taxonomy.find(params[:taxonomy_id])
        @taxon = @taxonomy.taxons.find(params[:id])
        parent_id = params[:taxon][:parent_id]
        new_position = params[:taxon][:position]

        # Add Here  ======
        add_product = Spree::Product.find_by_id(params[:product][:id])
        if add_product
          if @taxon.products.include?(add_product)
            flash[:error] = flash_message_for(@taxon, Spree.t(:taxon_is_already_linked_to_this_product))
            redirect_to edit_admin_taxonomy_taxon_path(@taxonomy.id, @taxon.id)
            return
          else
            (@taxon.products << add_product)
          end    
        end  
        # ==========

        if parent_id
          @taxon.parent = Taxon.find(parent_id.to_i)
        end

        if new_position
          @taxon.child_index = new_position.to_i
        end

        @taxon.save!

        # regenerate permalink
        if parent_id
          @taxon.reload
          @taxon.set_permalink
          @taxon.save!
          @update_children = true
        end

        if params.key? "permalink_part"
          parent_permalink = @taxon.permalink.split("/")[0...-1].join("/")
          parent_permalink += "/" unless parent_permalink.blank?
          params[:taxon][:permalink] = parent_permalink + params[:permalink_part]
        end
        #check if we need to rename child taxons if parent name or permalink changes
        @update_children = true if params[:taxon][:name] != @taxon.name || params[:taxon][:permalink] != @taxon.permalink

        if @taxon.update_attributes(taxon_params)
          flash[:success] = flash_message_for(@taxon, :successfully_updated)
        end

        #rename child taxons
        if @update_children
          @taxon.descendants.each do |taxon|
            taxon.reload
            taxon.set_permalink
            taxon.save!
          end
        end

        respond_with(@taxon) do |format|
          # format.html {redirect_to edit_admin_taxonomy_url(@taxonomy) }
          format.html {redirect_to edit_admin_taxonomy_taxon_path(@taxonomy.id, @taxon.id) }
          format.json {render :json => @taxon.to_json }
        end
      end

      def destroy
        @taxon = Taxon.find(params[:id])
        @taxon.destroy
        respond_with(@taxon) { |format| format.json { render :json => '' } }
      end

      # Add here =============
      def delete_product
        taxon = Spree::Taxon.find(params[:taxon_id])
        delete_product = Spree::Product.find_by_id(params[:product_id])
        if taxon.products.include?(delete_product)
          taxon.products.delete(delete_product)
          taxon.save!
          flash[:success] = "Product #{delete_product.id} has been deleted from Taxon id: #{taxon.id}" 
        end
        redirect_to admin_taxonomy_taxons_path(params[:taxonomy_id], format: :html)    
      end
      # ======================

      private
        def taxon_params
          params.require(:taxon).permit(permitted_params)
        end

        def permitted_params
          Spree::PermittedAttributes.taxon_attributes
        end
    end
  end
end
