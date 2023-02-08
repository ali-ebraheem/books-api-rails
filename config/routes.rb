Rails.application.routes.draw do
  #resource mean define all routes in the specific controller
  namespace :api do
    namespace :v1 do
    resources :book, only:[:index,:create,:destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
end
  # Defines the root path route ("/")
  # root "articles#index"
end
