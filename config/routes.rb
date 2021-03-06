Rails.application.routes.draw do
  namespace :admins do
    get 'customers/index'
  end
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
     root 'orders#top'
     resources :orders,    only:[:index,:show,:update]
     get 'orders/top'
     patch 'orders/order_records/:id', to: 'orders#update2'
     put 'orders/order_records/:id', to: 'orders#update2'
     resources :categories, only:[:index,:create,:edit,:update,:destroy]
     resources :products, only:[:index,:new,:show,:create,:edit,:update,:destroy]
     resources :customers, only:[:index,:edit,:show,:update]
   end


   namespace :customers do
     root 'products#top'
     post 'orders/save'
     get 'orders/confirm'
     get 'customers/confirm'
     get 'orders/confirm'
     get 'orders/thanks'
     delete 'cart_items/destroy_all'
   	 resources :orders,    only:[:new,:index,:show,:create]
   	 resources :products,  only:[:show,:index]
   	 resources :customers, only:[:show,:update,:edit,:destroy]
   	 resources :cart_items,only:[:index,:update,:destroy,:create,:edit]
     resources :deliveries,only:[:index,:edit,:update,:create,:destroy]
   end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
