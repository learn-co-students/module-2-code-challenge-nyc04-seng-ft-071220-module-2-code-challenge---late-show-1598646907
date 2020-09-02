class AppearancesController < ApplicationController

    
    def index
        @appearances = Appearance.all
        @guests = Guest.all 
        @episodes = Episode.all
    end

    
    def new
        @appearance = Appearance.new
        @guests = Guest.all 
        @episodes = Episode.all
    end
    
    def create
        @episode = Episode.all
        @appearance = Appearance.create(appearance_params)
        # if @appearance.valid?
            redirect_to episode_path(@episode)
        #   else 
        #     flash[:errors] = @appearance.errors.full_messages
        #     redirect_to new_appearance_path
        #   end
    end


    def show
        @appearance = Appearance.find(params[:id])
    end

private

    def appearance_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end


end
