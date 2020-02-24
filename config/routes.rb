Rails.application.routes.draw do
  root 'customers/products#top'

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
     resources :orders,    only:[:index,:show]
     resources :products
   end

   namespace :customers do
   	 resources :orders,    only:[:new,:index,:show]
   	 resources :products,  only:[:show,:index]
   	 resources :customers, only:[:show,:update,:edit]
   	 resources :cart_items,only:[:index,:update,:destroy]
     resources :deliveries,only:[:index,:edit,:update,:destroy]
   end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
