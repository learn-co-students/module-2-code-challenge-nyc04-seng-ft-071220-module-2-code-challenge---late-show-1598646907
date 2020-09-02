class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @errors = flash[:errors]
    end
#need to works on errors for validations
    def create
        @appearance = Appearance.new(appearance_params)
        if @appearance.valid?
            @appearance.save
            redirect_to episode_path(@appearance.episode.id)
        else
            # render :new
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end
