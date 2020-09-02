class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def update
    
  end

  def destroy
    @episode.destroy
    redirect_to episodes_path
  end
end
