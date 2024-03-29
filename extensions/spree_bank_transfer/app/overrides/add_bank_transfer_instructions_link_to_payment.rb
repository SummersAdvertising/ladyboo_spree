Deface::Override.new(
  :virtual_path => 'spree/checkout/_payment',
  :name => 'add_bank_transfer_instructions_link_to_payment',
  :insert_after => "#payment-method-fields",
  :text => %q{
    <% if @order.available_payment_methods.any? { |pm| pm.type == 'Spree::PaymentMethod::BankTransfer' } %>
      <p><%= link_to "How Bank Transfer works?", bank_transfer_instructions_path, :id => 'banktransfer_instructions', :target => "_blank" %></p>
    <% end %>
  },
  :disabled => true,
  :original => '4a09c9efa687acb595642a8aa61b972bb5301666'
)

