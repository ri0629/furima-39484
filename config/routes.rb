Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/new'
  devise_for :users
  get 'messages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "items#index"
  resources :items, only: [:new, :create] do
    #resources :users, only: [:index, :create]

    root to: 'categories#index'
    resources :categories

    root to: 'situations#index'
    resources :situations
  end
end
