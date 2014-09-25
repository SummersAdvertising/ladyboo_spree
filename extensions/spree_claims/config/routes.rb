Spree::Core::Engine.routes.draw do
  resources :claims, :only => [:new, :create]
  namespace :admin do
    resources :claims, :except => [:new, :create]
  end
end
