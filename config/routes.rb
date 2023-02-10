Rails.application.routes.draw do
  # get 'static_pages/home'
  root 'static_pages#home'
  devise_for :users
  resources :categories
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
