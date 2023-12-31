Rails.application.routes.draw do

  devise_for :users

  root to: "items#index"
  resources :items do
    resources :orders, only: [:index, :create]
     get '/furima-footer.png', to: 'items#footer_image',on: :collection
     patch '/:id', to: 'items#update', on: :member
     get '/new-route', to: 'items#new_route'
     delete '/users/sign_out', to: 'sessions#destroy', as: :destroy_user_session
  end

  Rails.application.routes.draw do
    get '/path', to: 'controller#action'
  end

end


