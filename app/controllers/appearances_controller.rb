class AppearancesController < ApplicationController
    
    def new
        @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end
    
    def create
        appearance_params = params.require(:appearance).permit(:episode_id, :guest_id, :rating)
        @appearance = Appearance.create(appearance_params)
        redirect_to new_appearance_path
    end
end
