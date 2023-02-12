Rails.application.routes.draw do
  resources :article_reviews
  root 'static_pages#home'
  get '/categories/:id', to: 'static_pages#category'
  devise_for :users
  resources :categories
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
