Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show, :update]
      resources :game_histories, only: [:create, :index]
      resources :fish, only: [:index, :show]
      post '/login', to: "auth#login"
    end
  end
end
