Rails.application.routes.draw do
  devise_for :users#, skip: [:registrations]

  root to: 'static#homepage'
  get '/products', to: 'products#index'
  get '/products/:id', to: 'products#show', as: 'product'

  authenticate :user do

    namespace :admin do
      resources :products
    end

  end
end
