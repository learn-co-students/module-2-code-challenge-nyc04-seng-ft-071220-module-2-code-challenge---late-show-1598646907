class AppearancesController < ApplicationController

    def new  
        @errors = flash[:error] #creates a new instance of error response
        @appearance = Appearance.new #creates a new instance of the joiner class Appearance
    end
    def create 
        @appearance = Appearance.new(appearance_params) #using a private method to specify what our arguments will be
         if @appearance.valid?
            @appearance.save 
            redirect_to episode_path(@appearance.episode_id), notice: "Another Famous Guest has made an appearance" #Go to new Appearance and display message if saved
         else
            if @appearance.errors.messages[:guest_id].any? 
                flash[:error] = @appearance.errors.messages[:guest_id]
            else
                 flash[:error] = @appearance.errors.messages[:rating] 
            end
            redirect_to new_appearance_path         #redirect to a new_path
        end 
    end

  private 

     def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
     end
end
