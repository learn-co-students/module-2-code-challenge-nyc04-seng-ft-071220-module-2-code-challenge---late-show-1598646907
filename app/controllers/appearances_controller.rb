class AppearancesController < ApplicationController

    def new 
        @appearance = Appearance.new
    end

    def create 
        @appearance = Appearance.new(appearance_params)
        if @appearance.save 
            # byebug
            redirect_to episode_path(@appearance.episode_id) #selected episode's show page
        else 
            redirect_to new_appearance_path
        end
    end

    private 

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end
