Rails.application.routes.draw do

  devise_for :admins
  devise_for :customers
  resources :customers,only:[:show,:update,:edit]
  get 'customers/confirm'
  
  get 'cart_items/index'
  get 'cart_items/edit'

  root 'products#top'
  get  'products/show'
  get  'products/index'

  resources :cart_items,only:[:index,:edit,:update,:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
