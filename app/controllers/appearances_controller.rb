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

# - I do not know yet how to add flash and error messages here, but I will revisit the concepts.

# - After submitting the form, the user should be  ***  redirected to the selected episode's show page.  ***


    private

    def appearance_params
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end

            # - Helper method for appearances#create

end

# - From the README:
#### 1. Appearance Model

# - To log that a specific Guest appeared on a certain Episode, 
# - we need to create the Appearance model. **Make the necessary updates to the schema and models** so that:

# - Guest can appear on many episodes
# - Episode can have multiple guests
# - Appearance stores a numeric rating

# - The application keeps track of the guests that have appeared on the show.