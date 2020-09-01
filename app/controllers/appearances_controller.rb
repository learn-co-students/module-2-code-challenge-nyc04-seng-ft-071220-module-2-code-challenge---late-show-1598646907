class AppearancesController < ApplicationController

    def new
        @errors = flash[:errors]
        @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        appearance_params = params.require(:appearance).permit(:guest_id, :episode_id, :rating)
        @appearance = Appearance.create(appearance_params)
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode.id)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
        
    end

end

