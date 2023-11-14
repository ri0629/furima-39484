Rails.application.routes.draw do

  devise_for :users

  root to: "items#index"
  resources :items do
     get '/furima-footer.png', to: 'items#footer_image',on: :collection
     patch '/:id', to: 'items#update', on: :member
  end

end
