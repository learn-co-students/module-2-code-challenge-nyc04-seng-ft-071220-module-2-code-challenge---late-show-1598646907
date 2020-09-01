class AppearancesController < ApplicationController

    def index 
        @appearances = Appearance.all
    end

    def new
        @errors = flash[:errors]
        @appearance = Appearance.new
    end

    def create
        appear_params = params.require(:appearance).permit(:rating, :guest_id, :episode_id)
        @appearance = Appearance.new(appear_params)
        if @appearance.valid?
            @appearance.save
            redirect_to episode_path(@appearance.episode)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end


end
