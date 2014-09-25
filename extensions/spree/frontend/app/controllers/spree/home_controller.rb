module Spree
  class HomeController < Spree::StoreController
    helper 'spree/products'
    respond_to :html

    def index
      @searcher = build_searcher(params)
      @products = @searcher.retrieve_products
      @taxonomies = Spree::Taxonomy.includes(root: :children)
      # @taxonomies = Spree::Taxonomy.includes(root: :children).where("name ='Brand'")
    end
  end
end
