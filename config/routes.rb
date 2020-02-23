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

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
