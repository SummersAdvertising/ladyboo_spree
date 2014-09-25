module ApplicationHelper
  def fb_share(app_id, redirect_uri, opts={})
    o = {:text => 'Facebook 分享',
      :name => '',
      :display => '',
      :caption => '',
      :description => '',
      :link => '',
      :picture => '',
      :source => '',
      :properties => {},
      :actions => {}}.merge!(opts)
    
    opts_array = []
 
    opts.each do |key, value| 
      case  
        when key.to_s == 'properties' 
          @prop = value.to_json
        when key.to_s == 'actions'
          @action = value.to_json
        else 
        opts_array.push("#{key}=#{value}") 
      end
    end   
 
    url = "http://www.facebook.com/dialog/feed?app_id=#{app_id}&redirect_uri=#{redirect_uri}&#{opts_array.join("&")}&properties=#{@prop}&actions=#{@action}"
    link_to("#{o[:text]}", url)   
  end

  def product_name_in_en(product_id)
    Spree::Product.find_by_sql("select name from spree_product_translations where spree_product_id = #{product_id} and locale = 'en' ").first.try(:name)  
  end

  # Used in product detail page for product_size_table, @frontend/app/view/spree/products/show.html.erb
  def product_size_table_data_present_in_row(product, n)
    product.send(:"xs_#{n}").present? or product.send(:"s_#{n}").present? or product.send(:"m_#{n}").present? or product.send(:"l_#{n}").present? or product.send(:"xl_#{n}").present? or product.send(:"f_#{n}").present? 
  end 

  # Used in combination layout edit form, @backend/app/view/spree/admin/combination_layouts/_form.html.erb
  def get_taxon_name(taxon_id)
    if taxon_id.present?
      Spree::Taxon.find_by_id(taxon_id).name 
    else
      Spree.t("combinationlayout.no_taxon")
    end      
  end  
end
