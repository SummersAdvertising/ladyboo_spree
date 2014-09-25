module Spree
  Variant.class_eval do
    alias_method :orig_price_in, :price_in
    def price_in(currency)
      return orig_price_in(currency) unless self.in_sale?
      sale_price_in(currency)    
    end

    def sale_price_in(currency)
      Spree::Price.new(variant_id: self.id, amount: self.product.master.sale_price, currency: currency)    
    end

    def origin_price_in(currency)
      prices.select{ |price| price.currency == currency }.first || Spree::Price.new(variant_id: self.id, currency: currency)
    end

    def in_sale?
      self.product.master.sale_price.present?
    end
  end
end