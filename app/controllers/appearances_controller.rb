class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
    end 

    def create 
        @appearance = Appearance.create(appearance_params)
        episode = Episode.find(params[:appearance][:episode_id])
        redirect_to episode_path(episode)
        
    end 

    private 
    def appearance_params
        params.require(:appearance).permit(:rating, :episode_id, :guest_id)
    end 
end
