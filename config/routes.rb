Rails.application.routes.draw do
  resources :customers,only:[:show,:update,:edit]
  get 'customers/confirm'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
