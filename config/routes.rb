Rails.application.routes.draw do
  # resources :appearances, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/appearances', to: 'appearances#index' 
  get '/appearances/new', to: 'appearances#new' 
  post '/appearances', to: 'appearances#create'
  # post '/episodes', to: 'episodes#create'
  # resources :guests, only: [:index]
  # resources :episodes, only: [:index]
  get '/episodes', to: 'episodes#index' 
  get '/episodes', to: 'episodes#new' 
  post '/episodes', to: 'episodes#create'
  # get '/episodes/:id', to: 'episode#show' as: 'episode'
  get '/guests', to: 'guests#index' 
  get '/guests', to: 'guests#new' 
  post '/guests', to: 'guests#create'

  #to be redirected to episode page
  

end 



