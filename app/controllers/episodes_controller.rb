class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
    render :index
  end

  def new 
    @episode = Episode.new
    render :new
end

def create
  episode_params = params.require(:episode).permit(:date)
  @episode = Epsisode.create(episode_params)
  redirect_to episode_path(@episode)
end


# def show 
#   @episode = Episode.find(params[:id])
# end
end 