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
<<<<<<< HEAD
     resources :customers, only:[:index,:edit,:show,:update]
=======
>>>>>>> 9a8223230c6eb12fe209ccccbfe0f66049b1f943
     resources :orders,    only:[:index,:show]
     get 'orders/top'
     resources :categories, only:[:index,:create,:edit,:update,:destroy]
     resources :products, only:[:index,:new,:show,:create,:edit,:update,:destroy]
<<<<<<< HEAD
=======
     resources :customers, only:[:index,:show,:edit]
>>>>>>> 9a8223230c6eb12fe209ccccbfe0f66049b1f943
   end

   namespace :customers do
     get 'customers/confirm'
     get 'orders/thanks'
   	 resources :orders,    only:[:new,:index,:show]
   	 resources :products,  only:[:show,:index]
   	 resources :customers, only:[:show,:update,:edit,:destroy]
   	 resources :cart_items,only:[:index,:update,:destroy]
     resources :deliveries,only:[:index,:edit,:update,:destroy]
   end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
