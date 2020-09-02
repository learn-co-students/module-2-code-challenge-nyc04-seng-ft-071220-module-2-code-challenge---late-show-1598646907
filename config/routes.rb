Rails.application.routes.draw do
    #resources :appearances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # resources :guests, only: [:index]
    # resources :episodes, only: [:index]


  get "/guests", to: "guests#index", as: "guests"
  get "/guest/new", to: "guests#new", as: "new_guest"
  post "/guests", to: "guests#create"
  get "/guests/:id", to: "guests#show", as: "guest"


  get "/episodes", to: "episode#index", as: "episodes"
  get "/episode/:id", to: "episodes#show", as: "episode"


  get "/appearances/index", to: "appearances#index", as: "appearances"
  get "/appearances/new", to: "appearances#new", as: "new_arappearances"
  post "/arappearances", to: "appearances#create"



end
