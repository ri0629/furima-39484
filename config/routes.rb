Rails.application.routes.draw do

  devise_for :users

  root to: "items#index"
  resources :items, only: [:index, :new, :create] do
    get '/furima-footer.png', to: 'controller_name#action_name'
  end

end
