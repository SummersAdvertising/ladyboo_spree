class CreateTableSpreeFavorites < ActiveRecord::Migration
  def change
    create_table :spree_favorites do |t|
      t.integer :user_id
      t.integer :product_id
      t.timestamps
    end
    add_index :spree_favorites, [:user_id, :product_id], :unique => true
    add_index :spree_favorites, :user_id
  end
end
