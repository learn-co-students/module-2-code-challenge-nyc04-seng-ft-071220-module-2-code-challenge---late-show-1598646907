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
        @new_appearance = Appearance.new(appearance_params)
        #byebug
        if @new_appearance.valid?
            @new_appearance.save
            #redirect to the episode show page
            redirect_to "/episodes/#{params[:appearance][:episode_id]}"
        else
            render :new
        end
    end
end
