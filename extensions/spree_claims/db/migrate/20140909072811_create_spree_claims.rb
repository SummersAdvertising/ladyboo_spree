class CreateSpreeClaims < ActiveRecord::Migration
  def change
    create_table :spree_claims do |t|
      t.string     :name
      t.string     :email
      t.string     :subject
      t.string     :order_number
      t.text       :message
      t.text       :note
      t.string     :status 
      t.datetime   :closed_at

      t.timestamps
    end
  end
end
