class AppearancesController < ApplicationController
    
    def index
    end

    def show
    end

    def new
        @appearance=Appearance.new
        @guests=Guest.all
        @episodes=Episode.all

    end

    def create
        @appearance=Appearance.create(appearance_params)
        if @appearance.save
        else
            render :new
    end
end



    private
    
    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end