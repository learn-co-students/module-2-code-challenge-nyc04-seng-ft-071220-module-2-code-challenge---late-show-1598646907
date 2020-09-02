class AppearancesController < ApplicationController
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
        
    end

    #I want to create a private method where I can save my params
    #Also for readability
end
