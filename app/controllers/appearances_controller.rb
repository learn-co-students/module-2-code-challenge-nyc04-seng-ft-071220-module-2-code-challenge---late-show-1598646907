class AppearancesController < ApplicationController
    

    def new
        @appearance = Appearance.new
         
    end

    def create
        @appearance = Appearance.create(appearance_params)

        if  number entered is outside of the range [1..5]
            message "that number is outside the reange"
        else
            true


        redirect_to episode_path(@appearance.episode)
    end


    private

    def appearance_params
        params.requie(:appearance).permit(:guest_id, :episode_id,)
    end
end
