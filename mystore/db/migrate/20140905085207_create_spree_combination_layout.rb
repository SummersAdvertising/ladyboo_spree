class CreateSpreeCombinationLayout < ActiveRecord::Migration
  def change
    create_table :spree_combination_layouts do |t|
      t.column :taxon_id,           :integer
      t.column :text_1,             :string
      t.column :text_2,             :string
      t.column :text_3,             :string
      t.column :text_4,             :string
      t.column :text_5,             :string
      t.column :image_file_name,    :string
      t.column :image_content_type, :string
      t.column :image_file_size,    :integer
      t.column :image_updated_at,   :datetime
      
      t.timestamps
    end
  end
end
