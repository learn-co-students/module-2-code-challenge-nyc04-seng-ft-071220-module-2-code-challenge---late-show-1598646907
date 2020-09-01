Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :guests, only: [:index]
  # resources :episodes, only: [:index]
  get "/guests", to: "guests#index", as: "guests"
  
  get "/episodes", to: "episodes#index", as: "episodes"

  get "/appearances/new", to: "appearances#new", as: "new_appearance"
end
