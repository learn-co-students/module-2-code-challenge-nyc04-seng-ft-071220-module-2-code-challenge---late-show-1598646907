Rails.application.routes.draw do
  # resources :appearances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :new, :create, :show]
  resources :episodes, only: [:index, :new, :create, :show]

  get "/appearances", to: "appearances#index", as: :appearances
  get "/appearances/new", to: "appearances#new", as: :new_appearance
  post "/appearances", to: "appearances#create"
  get "/appearances/:id", to: "appearances#show", as: :appearance
  get "/appearances/:id/edit", to: "appearances#edit", as: :edit_appearance
  patch "/appearances/:id", to: "appearances#update"
  delete "appearances/:id", to: "appearances#destroy"


  root 'welcome#home'

end
