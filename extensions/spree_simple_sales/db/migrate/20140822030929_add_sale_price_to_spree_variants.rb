class AddSalePriceToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :sale_price, :dicimal, precision: 8, scale: 2
  end
end
