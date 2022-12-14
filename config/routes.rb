Rails.application.routes.draw do
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "products#index"
  patch '/products/:id', to:'products#update'
  post '/products', to:'products#create'
  get '/products/new', to:'products#new', as: :new_product
  get '/products', to:'products#index'
  get '/products/:id', to: 'products#show', as: :product
  get '/products/:id/edit', to:'products#edit', as: :edit_product

  namespace :authentification, path: '', as: '' do
    resources  :users, only: [:new, :create]
    resources :sessions, only: [:new, :create]
  end
end
