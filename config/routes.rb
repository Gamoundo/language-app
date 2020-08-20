Rails.application.routes.draw do
  resources :lessons
  
  resources :user_courses
    
  resources :courses
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :users, only: [:create]
  patch '/:id', to: "users#update"
  post "/login", to: "users#login"
  # post "/register", to: "users#create"
  get "/auto_login", to: "users#auto_login"
  delete '/user_courses', to: 'user_courses#destroy'
end
