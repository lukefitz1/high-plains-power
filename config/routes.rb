Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]

  get '/products', to: 'products#index'
  get 'products/:id', to: 'products#show'

  authenticate :user do
    resources :products
  end
end
