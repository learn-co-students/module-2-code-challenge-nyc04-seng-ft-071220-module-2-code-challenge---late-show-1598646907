class AppearancesController < ApplicationController
    ######I created a domain model its under assets > images ############
   
    #I don't need to have an index here because I am focusing on 
   #new and create. However I do need to have an index route


    def new
       # @apperances = Appearance.all
       #If I am trying to create a form calling these instance variables
       #I should include them here.
        @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        #Now we want to save this instance to our db.
        #We want to create it
        #Going to create it using the private helper method
        @appearance = Appearance.create(appearances_params)
        #now include validations

      
        if @appearance.valid?
            #if it exists then show me the episode?
            #At the moment this is not redirecting me. 
            #Also my form says to "create an appearance" but I have it 
            #labeled as "submit" 🧐
            redirect_to @appearance.episode
        else
            redirect_to new_appearance_path
        end
    end
        
        
   

    #I want to create a private method where I can save my params
    #Also for readability
    private

    def appearances_params
        params.require(:appearance).permit(:episode_id, :guest_id)
    end

end
