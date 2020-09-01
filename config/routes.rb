Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index]
  resources :episodes, only: [:index]
  get '/appearances', to: "appearances#new", as: "new_appearance" #form to create appearance
end
