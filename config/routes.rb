Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]

  root to: 'static#homepage'
  get '/products', to: 'products#index'
  get 'products/:id', to: 'products#show'

  authenticate :user do
    resources :products
  end
end
