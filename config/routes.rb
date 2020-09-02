Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :guests, only: [:index, :show]
    resources :episodes, only: [:index, :show]


  # HTTPVERB "/URL", to: controllerNAME#method
# GET, POST,PATCH, PUT, DELETE




  #  get '/guests', to: 'guests#index', as: 'guests'
  # get '/guests/new', to: 'guests#new', as:'new_guest'
  # post '/guests', to:'guests#create'
  # get '/guests/:id', to:'guests#show', as:'guest'


  get '/appearances', to: 'appearances#index', as: 'appearances'
   get '/appearances/new', to: 'appearances#new', as:'new_appearance'
   post '/appearances', to:'appearances#create'
   get '/appearances/:id', to:'appearances#show', as: 'appearance'
   get '/appearances/:id/edit', to:'appearances#edit', as: 'edit_appearance'
  patch '/appearances/:id', to:'appearances#update'
  #  get '/appearances/:id', to:'appearances#destory'


  # get '/episodes', to: 'episodes#index', as: 'episodes'
  root "welcome#home"
end


# i need more clearity on the routes b/c i get lost as the per  what i need and where everything is going 
#  i can follow the start and understand hwere thigs will be going get, get and 



# create get "guest to fix first error by "getting your guest to the index page
#  next error , controller  unitilized constant for "guest controller
# fix this by creating a controller for students using rails g controller
# create a path for one guest in label for "new guest"


 
