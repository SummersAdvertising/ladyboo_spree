Deface::Override.new(
  :virtual_path => "spree/shared/_nav_bar",
  :name => "add_link_to_users_favorite_products",
  :insert_before => "li#search-bar",
  :text => "<% if spree_current_user %><li><%= link_to Spree.t(:favorite_products), favorite_products_path %></li><% end %>",
  :sequence => { :before => "auth_shared_login_bar"},
  :original => 'b918a3251796ef1a33e3b30b5d4c5586a9a441df'
)

