Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "items#index"
  resources :items, only: [:new, :create] do
    #resources :users, only: [:index, :create]

    root to: 'articles#index'
    resources :articles
  end
end
