Rails.application.routes.draw do
  # resources :appearances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :guests, only: [:index]
  # resources :episodes, only: [:index]
  get '/episodes', to: "episodes#index", as: "episodes"
  get '/episodes/:id', to: "episodes#show", as: "episode"
  get '/appearances/new', to: "appearances#new", as: 'new_resource'
  post "/appearances", to: 'appearances#create'
  get "guest/:id", to: "guests#show", as: 'guest'
end
