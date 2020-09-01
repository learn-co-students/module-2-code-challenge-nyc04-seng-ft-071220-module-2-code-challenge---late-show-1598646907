Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances                      #validate rating!
end

# - On the GUEST SHOW page, add a list of the Episodes the Guest has APPEARED on.   *** :index, :show ***

# - For each EPISODE, SHOW the:
# - date of the Episode
# - rating for the Appearance

# - Each EPISODE date should link to the SHOW page for that EPISODE.    *** :index, :show ***

# - On the EPISODE show page, a user should see:

# - Episode date
# - A list of the GUESTS who were on that episode
# - Each guest's name should link to the Guest Show page


# - Add a validation to ensure that the rating is between 1 and 5.
# - Add handling for this error to the Appearance create action.
# - The validation error should be shown on the Appearance CREATION form    *** :index, :create ***
# - when a user attempts to save an appearance with an invalid rating.