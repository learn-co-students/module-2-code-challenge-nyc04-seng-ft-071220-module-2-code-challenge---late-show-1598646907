class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def new
    @episode = Episode.new
  end

  def create
    episode_params = params.require(:episode).permit(:date)
    @episode = episode.create(episode_params)
    redirect_to episode_path(episode)
  end
  
end
