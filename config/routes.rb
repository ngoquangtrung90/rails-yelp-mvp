Rails.application.routes.draw do
  # get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  get 'restaurants/:restaurant_id', to: 'restaurants#show', as: :restaurant
  get 'restaurants/:restaurant_id/edit', to: 'restaurants#edit', as: :edit
  get 'restaurants/:restaurant_id/reviews', to: 'reviews#index', as: :reviews
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :review_new
  post 'restaurants', to: 'restaurants#create'
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews
  patch 'restaurants/:restaurant_id', to: 'restaurants#update'
  delete 'restaurants/:restaurant_id', to: 'restaurants#destroy', as: :destroy
end
