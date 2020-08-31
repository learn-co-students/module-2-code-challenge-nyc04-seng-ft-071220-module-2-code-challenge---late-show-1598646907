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
  if @episode.valid? 
    redirect_to episodes_path
    # (@episode)
  else 
    flash[:errors] = @episode.errors.full_messages
    redirect_to new_episode_path
  end
end

def update
  @episode.update(episode_params)
  redirect_to episode_path(@episode)
end

# def show 
#   @episode = Episode.find(params[:id])
# render :show
# end
end 



