Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/appearances/new', to: 'appearances#new', as: "new_appearance"
  post '/appearances', to: 'appearances#create'
  # get '/appearances/:id/edit', to: 'appearances#edit', as "edit_appearance"
  # put '/appearances/:id', to: 'appearances#update'
  get '/guests', to: 'guests#index', as: 'guests'
  get '/guests/:id', to: 'guests#show', as: 'guest'
  
  get '/episodes', to: 'episodes#index', as: 'episodes'
  get '/episodes/:id', to: 'episodes#show', as: 'episode'

  root 'guests#index'
end
