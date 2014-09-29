Spree::Core::Engine.routes.draw do
  resources :contacts,
    :controller => 'contact_us/contacts',
    :only       => [:new, :create]
  get 'contact-us' => 'contact_us/contacts#new', :as => :contact_us
  get 'contact_us_download' => 'contact_us/contacts#download'
end
