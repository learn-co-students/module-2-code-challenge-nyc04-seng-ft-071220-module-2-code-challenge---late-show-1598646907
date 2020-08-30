Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index]
  resources :episodes, only: [:index]
  # HTTPVERB "/URL", to: controllerNAME#method
# GET, POST,PATCH, PUT, DELETE

# get "/guest", to: 
end
