class Spree::Admin::BlogEntriesController < Spree::Admin::ResourceController
  helper 'spree/blog_entries'

  # add here
  def index  
    @news_entries = Spree::BlogEntry.visible.by_category('news').page(@news_pagination_page).per(@news_pagination_per_page)
    @blog_entries = Spree::BlogEntry.visible.by_category('blog').page(@blog_pagination_page).per(@blog_pagination_per_page)    
  end

  def new
    @blog_entry = Spree::BlogEntry.new
    @blog_entry.permalink = generate_a_permalink  
  end

  # def create
  #   if !params[:category_list].present?
  #     flash[:error] = Spree.t(:category_cannot_be_blank)
  #     redirect_to new_admin_blog_entry_path
  #   end 
  # end

  private

    def generate_a_permalink
      p_links = Spree::BlogEntry.where("permalink LIKE '#{today_string}%' ")
      if p_links.present?
        p_array = []
        p_links.each do |p|
          p_array << p.permalink        
        end
        return today_string + (p_array.max.partition('-').last.to_i + 1).to_s
      end
      return today_string + '1'
    end

    def today_string
      DateTime.now.strftime("%Y%m%d-")   # => "20140826-"
    end

    def location_after_save
      edit_admin_blog_entry_url(@blog_entry)
    end

    def collection
      page = params[:page].to_i > 0 ? params[:page].to_i : 1
      per_page = params[:per_page].to_i > 0 ? params[:per_page].to_i : 20
      model_class.page(page).per(per_page)
    end

end
