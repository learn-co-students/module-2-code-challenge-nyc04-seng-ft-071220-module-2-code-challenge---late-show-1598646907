Rails.application.routes.draw do
  
  # get '/guests', to: 'guests#index' 
  # get '/episodes', to: 'episodes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :appearances
  resources :guests, only: [:index]
  resources :episodes, only: [:index]
end

# get '/restaurants', to: 'restaurants#index'

# resources :restaurants, only: [:index, :show]