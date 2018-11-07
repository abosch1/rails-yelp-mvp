Rails.application.routes.draw do
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # get 'restaurants/destroy'
  # get 'restaurants/update'
  # get 'restaurants/show'
  # get 'restaurants/edit'
  # get 'restaurants/index'
  # get 'restaurants/:restaurant_id/reviews', to: 'reviews#index'
  # get 'restaurants/:id', to: 'restaurants#show'

  # get 'reviews/:id', to: 'reviews#show'
  # get "reviews/:id/edit", to: "reviews#edit"
  # get "restaurants/:restaurant_id/reviews",     to: "reviews#index"
  # get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
  # post "restaurants/:restaurant_id/reviews",    to: "reviews#create"
  # get "reviews/:id",                            to: "reviews#show"
  # get "reviews/:id/edit",                       to: "reviews#edit"
  # patch "reviews/:id",                          to: "reviews#update"
  # delete "reviews/:id",                         to: "reviews#destroy"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
