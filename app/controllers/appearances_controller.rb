class AppearancesController < ApplicationController

    def index 
        # this is my home page route/view
    end 

    def new
        @appearance = Appearance.new
    end 

    def create 
        @appearance = Appearance.create(appearance_params)
        if @appearance.valid?
        episode = Episode.find(params[:appearance][:episode_id])
        redirect_to episode_path(episode)

        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end 
        
    end 

    private 
    def appearance_params
        params.require(:appearance).permit(:rating, :episode_id, :guest_id)
    end 
end
