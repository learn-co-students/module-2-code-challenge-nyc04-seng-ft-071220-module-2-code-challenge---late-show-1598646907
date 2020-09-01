class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @success = flash[:notice] # coming from appearance#create action upon successfully creating appearance.
    @episode = Episode.find(params[:id])
  end
  
end
