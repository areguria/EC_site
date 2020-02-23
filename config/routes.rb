Rails.application.routes.draw do
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

  resources :products, only: [:index, :show]
  namespace :admin do
  resources :products, only: [:index, :new, :create, :show, :edit, :destroy]
end
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
