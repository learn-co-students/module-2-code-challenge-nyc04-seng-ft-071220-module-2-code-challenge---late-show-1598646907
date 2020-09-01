class AppearancesController < ApplicationController

#     The rating on an Appearance should be between 1 and 5 (inclusive - `1` and `5` are okay).

# - Add a validation to ensure that the rating is between 1 and 5.
# - Add handling for this error to the Appearance create action.
# - The validation error should be shown on the Appearance creation form when a user attempts to save an appearance with an invalid rating.
   

    def new
        @errors = flash[:errors]
        @appearance = Appearance.new
        @episodes = Episode.all
        @guests = Guest.all
    end

    def create
        appearance_params =  params.require(:appearance).permit(:guest_id, :episode_id, :rating)

        @appearance = Appearance.create(appearance_params)

        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            @appearance.errors[:rating] << "must be between 1 and 5"
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

   
end
