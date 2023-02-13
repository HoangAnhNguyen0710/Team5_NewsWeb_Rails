Rails.application.routes.draw do
  # get 'static_pages/home'


  root 'static_pages#home'
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # user edit
  get 'users/edit', to: 'users#edit', as: 'edit_user'

  authenticated :user do
    root 'static_pages#home', as: :authenticated_root
  end

  unauthenticated do
    root 'static_pages#home', as: :unauthenticated_root
  end
  
  resources :categories
  
  resources :articles do 
    resources :comments, only: [:create]
  end

  resources :comments

  get 'contacts', to: 'contacts#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'users/show'
end
