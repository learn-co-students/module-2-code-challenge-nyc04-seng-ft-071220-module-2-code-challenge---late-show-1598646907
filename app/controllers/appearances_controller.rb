class AppearancesController < ApplicationController

    # def index
    #     @appearances = Appearance.all
    # end

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(appearance_params)
        redirect_to appearance_path(@appearance)
    end

    # def show
    # end

    # def edit
    # end

    # def update
    # end

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end
