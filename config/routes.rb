Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]

  


  get 'appearances', to: 'appearances#index', as: 'appearances'
  get 'appearances/new', to: 'appearances#new', as: 'new_appearances'
  post 'appearances', to: 'appearances#create' 
  get 'appearances/:id', to: 'appearances#show', as: 'appearance'
  get 'appearances/:id/edit', to: 'appearances#edit', as: 'edit_appearance'
  patch 'appearances:id', to: 'appearances#update'
  delete 'appearances/:id', to: 'appearances#destroy'



end
