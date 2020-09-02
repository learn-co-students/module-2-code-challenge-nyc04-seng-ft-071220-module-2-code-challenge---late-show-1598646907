class AppearancesController < ApplicationController
    def index
        @appearances = Appearance.all
    end

    def show
        @appearance = Appearance.find(params[:id])
    end

    def new
        @new_appearance = Appearance.new
    end

    def create
        appearance_params = params.require(:appearance).permit(:episode_id, :guest_id, :rating)
        @new_appearance = Appearance.create(appearance_params)
        byebug
        #redirect to the episode show page
        redirect_to "/episodes/#{params[:appearance][:episode_id]}"
    end
end
