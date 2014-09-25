class AddInvoiceDataToOrder < ActiveRecord::Migration
  def change
    add_column :spree_orders, :invoice_type,    :string
    add_column :spree_orders, :company_tax_id,  :string
    add_column :spree_orders, :invoice_title,   :string
    add_column :spree_orders, :invoice_address, :string
    add_column :spree_orders, :delivery_time,   :string
  end
end
