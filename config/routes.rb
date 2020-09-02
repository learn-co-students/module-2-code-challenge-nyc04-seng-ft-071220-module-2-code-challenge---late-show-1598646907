Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index,:show] #show each guest & all
  resources :episodes, only: [:index,:show] #needed to add the show to display episode information
  resources :appearances, only: [:index,:new,:create,:show] 
  #need index to display appearances, new and create go hand and hand
  #need the show to display the results of new erb
end
