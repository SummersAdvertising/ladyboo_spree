Deface::Override.new(:virtual_path => "spree/orders/show",
                     :name => "account_order_show_claim_link",
                     :insert_bottom => "[data-hook='links']",
                     :partial => "spree/orders/link_to_claim",
                     :disabled => false)