Rails.application.routes.draw do

  devise_for :users

  root to: "items#index"
  resources :items, only: [:index, :new, :create, :show, :edit] do
    get '/furima-footer.png', to: 'items#footer_image',on: :collection
  end

end
