Rails.application.routes.draw do
  #resources :appearances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]

  #routes for the appearance controller
  get "/appearances", to: "appearances#index", as: "appearance"
  get "/appearances/new", to: "appearances#new", as: "new_appearance"
  post "/appearances", to: "appearances#create"
end
