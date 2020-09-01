class AppearancesController < ApplicationController

    def new
        @errors = flash[:error] # assigning the error messages to an instance variable, to render them in view/new.html.erb.
        @appearance = Appearance.new
        
    end

    def create 
        @appearance = Appearance.new(appearance_params)
        if @appearance.save 
            redirect_to episode_path(@appearance.episode_id), notice: "New appearance successfully created." #selected episode's show page
        else
            @appearance.errors.messages[:guest_id].any? ? flash[:error] = @appearance.errors.messages[:guest_id] : flash[:error] = @appearance.errors.messages[:rating] 
            #saving the error messages to flash[:error]
            redirect_to new_appearance_path
        end 

    end

    private 

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end

# 6. Advanced: Additional Appearance Validation
# A Guest should only appear on a given Episode once.

# Add a validation to Appearance to ensure that each Guest can only appear once on the same Episode.
# Update the error handling on the Appearance creation form to show this validation error.

