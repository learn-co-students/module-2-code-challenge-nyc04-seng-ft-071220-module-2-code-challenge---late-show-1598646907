Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :guets, only: [:index, :show]
  get '/guests', to: 'guests#index', as: 'guests'
  get '/guests/:id', to: 'guests#show', as: 'guest'
  #resources :episodes, only: [:index, :show]
  get '/episodes', to: 'episodes#index', as: 'episodes'
  get '/episodes/:id', to: 'episodes#show', as: 'episode'
  #resources :appearances, only: [:new, :create]
  get '/appearances/new', to: 'appearances#new', as: "new_appearance"
  post '/appearances', to: 'appearances#create'

end
