Rails.application.routes.draw do
  root 'customers/products#top'

  namespace :customers do
    get 'orders/confirm'
  end
  root 'customers/products#top'

  namespace :customers do
    get 'cart_items/index'
  end
  devise_for :admins, controllers: {
  	sessions:      'admins/sessions',
  	passwords:     'admins/passwords',
  	registrations: 'admins/registrations'
  }
  devise_for :customers, controllers: {
  	sessions:      'customers/sessions',
  	passwords:     'customers/passwords',
  	registrations: 'customers/registrations'
  }
   namespace :admins do
     resources :products
   end

   namespace :customers do
   	 resources :orders,    only:[:new]
   	 resources :products,  only:[:show,:index]
   	 resources :customers, only:[:show,:update,:edit]
   	 resources :cart_items,only:[:index,:update,:destroy]
   end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
