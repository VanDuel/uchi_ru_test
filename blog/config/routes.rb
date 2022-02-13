Rails.application.routes.draw do
  root "posts#index"
  resources :posts, only: [:show, :create, :new, :index, :destroy] do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

#http://localhost:3000/posts