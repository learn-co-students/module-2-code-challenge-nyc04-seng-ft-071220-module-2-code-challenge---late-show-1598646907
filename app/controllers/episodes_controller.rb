class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

 def show
  @episode = episode.find(params[:id])
 end
# unsure if this is right ? and need clearity on this?

end
