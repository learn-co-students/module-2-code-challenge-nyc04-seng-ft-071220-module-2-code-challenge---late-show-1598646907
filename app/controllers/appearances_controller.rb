class AppearancesController < ApplicationController

    def new
        @errors= flash[:errors]
        @appearance= Appearance.new
    end

    def create
        @appearance= Appearance.create(params.require(:appearance).permit(:rating, :guest_id, :episode_id))
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode_id)
        else 
            redirect_to new_appearance_path
            flash[:errors]= @appearance.errors.full_messages
        end
    end



    
end
