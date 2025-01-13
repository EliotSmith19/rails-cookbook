Rails.application.routes.draw do
  # get "up" => "rails/health#show", as: :rails_health_check

  # get '/categories', to: 'categories#index'
  # get '/categories/new', to: 'categories#new'
  # get '/categories/:id', to: 'categories#show', as: 'category'
  # post '/categories', to: 'categories#create'

  resources :categories, only: [:index, :new, :show, :create] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end
