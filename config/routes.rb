Rails.application.routes.draw do

  devise_for :customers
  devise_for :admins

  resources :customers,only:[:show,:update,:edit]
  get 'customers/confirm'

  root 'products#top'
  get 'products/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
