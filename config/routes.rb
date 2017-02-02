Rails.application.routes.draw do
  resources :squabblers
  get 'pages/about'
  get 'pages/contact'

root 'squabblers#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
