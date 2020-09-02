Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :guests, only: [:index]
  # resources :episodes, only: [:index]

  #I don't feel comfortable using resources, don't want them here

  #################  GUEST ######################################################################
  get "/guests", to: "guests#index", as: "guests"
  get "/guests/:id", to: "guests#show", as: "guest"



  ################# EPISODE #####################################################################
  get "/episodes", to: "episodes#index", as: "episodes"
  get "/episodes/:id", to: "episodes#show", as: "episode"


  ################# Appearances ##################################################################
  #if this is my joiner file I probably need a #new and #create here
  get "/appearances", to: "appearances#index", as: "appearances"
  get "/appearances/new", to: "appearances#new", as: "new_appearance"
  post "/appearances", to: "appearances#create"





end
