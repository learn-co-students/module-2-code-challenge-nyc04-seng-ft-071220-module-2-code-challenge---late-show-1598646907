class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all
    end

    def show
        @appearance = Appearance.find(params[:id])
    end

    def new
        @appearance = Appearance.new
      end

    def create
        @appearance = Appearance.new(appearance_params)
        if @appearance.save 
            redirect_to @appearance.episode 
        else
            render :new
        end
    end

            # - New Appearance Form

            # - A user can fill out a form to CREATE a new Appearance. They can:

            # - Choose an existing guest from a select dropdown
            # - Choose an existing episode from a select dropdown
            # - Enter a numeric rating
            # - Submit the form

            # After submitting the form, the user should be  ***  redirected to the selected episode's show page.  ***

    private

    def appearance_params
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end

end
