Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]
  resources :players, only: [:index, :show, :create]
  resources :drafts, only: [:index, :show, :create]
  resources :matchups, only: [:index, :show, :create]
  resources :drafted_teams, only: [:index, :show, :create]
  resources :leagues, only: [:index, :show, :create]
  resources :stats, only: [:index, :show, :create]

  post "/login", to: "auth#login"
  post "/signup", to: "users#create"
  get "/profile", to: "users#profile"
end
