Rails.application.routes.draw do
  resources :appearances, only: [:index, :new, :create, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :episodes, only: [:new, :create, :update, :edit, :delete]
  # resources :appearances, only: [:new, :create]
  resources :guest
  get '/appearances', to: 'appearances#index' 
  get '/appearances/new', to: 'appearances#new' 
  post '/appearances', to: 'appearances#create'
  # post '/episodes', to: 'episodes#create'
  # resources :guests, only: [:index]
  # resources :episodes, only: [:index]
  get '/episodes', to: 'episodes#index' 
  get '/episodes', to: 'episodes#new' 
  # as: 'new_episode'
  post '/episodes', to: 'episodes#create'
  get '/episodes/:id', to: 'episodes#show' 
  # as: 'episode'
  

  get '/guests', to: 'guests#index' 
  get '/guests', to: 'guests#new' 
  post '/guests', to: 'guests#create'
 
end 

  #to be redirected to episode page






  # "appearance"=>{"episode_id"=>"1", "guest_id"=>"1", "rating"=>"5"}