class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show 
    @episode = Episode.find(params[:id])
  end
  
# - I need a show route/method to display all the episodes.

end

# - From the README:

# - After running the setup instructions above, visiting `'/guests'` will display all of the guests, 
# - and visiting `'/episodes'` will display all of the episodes.

# - The application keeps track of the guests that have appeared on the show.