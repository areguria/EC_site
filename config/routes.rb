Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers
  resources :customers,only:[:show,:update,:edit]
  get 'customers/confirm'

  root 'products#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
