Rails.application.routes.draw do

  devise_for :users

  root to: "items#index"
  resources :items, only: [:index, :new, :create, :show] do
    get '/furima-footer.png', to: 'items#footer_image'
  end

end
