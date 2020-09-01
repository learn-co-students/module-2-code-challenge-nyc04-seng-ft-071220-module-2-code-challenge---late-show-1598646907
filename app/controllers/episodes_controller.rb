class EpisodesController < ApplicationController
  
  before_action :get_episode, only: [:show]

  def index
    @episodes = Episode.all
  end

  def show
  end

  private

    def get_episode
        @episode = Episode.find(params[:id])
    end

end
