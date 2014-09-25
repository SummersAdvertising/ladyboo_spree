module Spree
  module Admin
    class CombinationLayoutsController < Spree::Admin::BaseController

      respond_to :html, :json, :js

      def index
        # @combination_layouts = Spree::CombinationLayout.all
        
        check_and_prepare_combination_layout_recoreds

        (1..18).each do |n|
          if Spree::CombinationLayout.find_by_id(n).present?
            instance_variable_set("@combination_layout_#{n}", Spree::CombinationLayout.find_by_id(n))  # => @combination_layout_1
          else
            instance_variable_set("@combination_layout_#{n}", Spree::CombinationLayout.new).id = n     # => @combination_layout_1.id = 1
          end
        end   
      end

      def new
        
      end

      def create
        @combination_layout = Spree::CombinationLayout.new(combination_layout_params)
        respond_to do |format|
          if @combination_layout.save
            flash[:success] = Spree.t("combinationlayout.combination_layout_was_successfully_updated")
            format.html { redirect_to admin_combination_layouts_path }
          else
            format.html { render :edit }
          end
        end
      end

      def edit
        if Spree::CombinationLayout.find_by_id(params[:id])
          @combination_layout = Spree::CombinationLayout.find_by_id(params[:id])
        else
          @combination_layout = Spree::CombinationLayout.new
        end  
      end

      def update
        if Spree::CombinationLayout.find_by_id(params[:id]) 
          @combination_layout = Spree::CombinationLayout.find_by_id(params[:id]) 
        else
          @combination_layout = Spree::CombinationLayout.new
        end    
        respond_to do |format|
          if @combination_layout.update(combination_layout_params)
            flash[:success] = Spree.t("combinationlayout.combination_layout_was_successfully_updated")
            format.html { redirect_to admin_combination_layouts_path }
          else
            format.html { render :edit }
          end
        end
      end

      private

        def combination_layout_params
          params.require(:combination_layout).permit(:taxon_id, :text_1, :text_2, :text_3, :text_4, :text_5, :image)
        end

        def check_and_prepare_combination_layout_recoreds
          record_count = Spree::CombinationLayout.all.count
          record_need_to_be_created = (18 - record_count)
          if record_need_to_be_created > 0
            (1..record_need_to_be_created).each do
              new_record = Spree::CombinationLayout.new
              new_record.save
            end  
          end  
        end
    end
  end
end
