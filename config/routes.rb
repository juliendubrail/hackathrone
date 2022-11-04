Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/products', to:'products'
  get '/products/new', to:'products#new'
  get '/products', to:'products#index'
  get '/products/:id', to:'products#show'
end
