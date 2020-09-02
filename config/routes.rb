Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/episodes", "episodes#index", as: "episodes"
  get "/episodes/new", "episodes#new", as: "new_episode"
  post "/episodes/:id/create", "episodes#create"
  get "/episodes/:id", "episodes#show", as: "episode"

  get "/guests", "guests#index", as: "guests"
  get "/guests/new", "guests#new", as: "new_guest"
  post "/guests/:id/create", "guests#create"
  get "/guests/:id", "guests#show", as: "guest"

  get "/appearances", "appearances#index", as: "appearances"
  get "/appearances/new", "appearances#new", as: "new_appearance"
  post "/appearances/:id/create", "appearances#create"
  get "/appearances/:id", "appearances#show", as: "appearance"
  

end
