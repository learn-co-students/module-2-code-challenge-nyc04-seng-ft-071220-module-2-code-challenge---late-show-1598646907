class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show 
    @guest = Guest.find(params[:id])
  end 

# - I need a show route/method to display all the guests.

end

# - From the README:

# - After running the setup instructions above, visiting `'/guests'` will display all of the guests, 
# - and visiting `'/episodes'` will display all of the episodes.

# - The application keeps track of the guests that have appeared on the show.