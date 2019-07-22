Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]
  resources :players, only: [:index, :show]
  resources :drafts, only: [:index, :show]
  resources :matchups, only: [:index, :show]
  resources :drafted_teams, only: [:index, :show]
  resources :leagues, only: [:index, :show]
  resources :stats, only: [:index, :show]

  post "/login", to: "auth#login"
  post "/signup", to: "users#create"
  get "/profile", to: "users#profile"
end
