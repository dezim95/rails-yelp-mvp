Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :restaurants, only: %i[index show new create]
  get 'restaurants', to: 'restaurants#index', as: :restaurants
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id/reviews/new', to: 'reviews#new', as: :new_review
  post 'restaurants/:id/reviews', to: 'reviews#create', as: :create_review
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Defines the root path route ('/')
  # root 'articles#index'
end
