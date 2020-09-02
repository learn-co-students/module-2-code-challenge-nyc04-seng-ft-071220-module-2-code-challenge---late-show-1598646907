class AppearancesController < ApplicationController

    def index
        @index = Appearance.all
    end 
        #  this was with "s" this had to be changed
     def new
        @appearance = Appearance.new
     end

#    


    #  def create
    #     @Appearance = Appearance.new(appearance_params)
    #     if @appearance.valid?
    #         @appearance.save
    #         redirect_to episode_path(@appearance.episode)
    #   end
    # end
end
# this I remeber from review  mock code I understand some of it.
# create a new appearance within the params (all appearances)
# if it vaildates to  true , then save that appearance and r/t
# direct me to the path with the episode, that appearance in that episode.
# my best explation .
#     



