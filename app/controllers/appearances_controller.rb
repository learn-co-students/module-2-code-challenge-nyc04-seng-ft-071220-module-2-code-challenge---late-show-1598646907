class AppearancesController < ApplicationController
    
    def index
        @appearances=Appearances.all
    end

    def show
        @appearance=Appearance.find(params[:id])
    end

    def new
        @appearance=Appearance.new
        @guest=Guest.all
        @episode=Episode.all
        @errors=flash[:errors]

    end

    def create
        @appearance=Appearance.create(appearance_params)

        if @appearance.valid?
            redirect_to guest_path(@appearance.guest)
        else
            #byebug
            flash[:errors]=@appearance.errors.full_messages
          redirect_to new_appearances_path
    end
end



    private
    
    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end