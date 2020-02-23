Rails.application.routes.draw do


  devise_for :customers
  devise_for :admins

  get 'customers/confirm'

  root 'customers/products#top'
   
   namespace :admins do

   end


   namespace :customers do
   	 resources :orders,    only:[:show]
   	 resources :products,  only:[:show,:index]
   	 resources :customers, only:[:show,:update,:edit]
   	 resources :cart_items,only:[:index,:edit,:update,:destroy]
   end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
