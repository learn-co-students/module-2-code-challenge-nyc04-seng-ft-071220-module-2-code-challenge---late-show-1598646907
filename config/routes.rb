Rails.application.routes.draw do
  resources :appearances, only: [:index]
  get "/appearances/new", to: "appearances#new", as: "new_appearance"
  post "/appearances", to: "appearances#create"

  get "/guests", to: "guests#index"
  get "/guests/:id", to: "guests#show", as: "show_guest"
  

  get "/episodes", to: "episodes#index"
  get "/episodes/:id", to: "episodes#show", as: "show_episode"
end
