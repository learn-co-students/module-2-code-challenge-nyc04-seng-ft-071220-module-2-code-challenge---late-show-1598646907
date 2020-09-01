Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :guests, only: [:index]
  # resources :episodes, only: [:index, :show]

  get '/episodes', to: "episodes#index", as: "episodes" #all episodes
  get '/episodes/:id', to: "episodes#show", as: "episode" #specific episode

  get '/guests', to: "guests#index", as: "guests" #all guests
  get '/guests/:id', to: "guests#show", as: "guest" #specific guest

  get '/appearances/new', to: "appearances#new", as: "new_appearance" #form to create appearance
  post '/appearances', to: "appearances#create" #creates the appearance
end
