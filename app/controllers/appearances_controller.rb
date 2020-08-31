class AppearancesController < ApplicationController
    def index
        @appearances = Appearance.all
    end 

      def new 
        @appearances = Appearance.new
        @episodes = Episode.all
        @guests = Guest.all
      end 
    
    def create
        appearance_params = params.require(:appearance).permit(:episode_id, :guest_id, :rating)
        @appearance = Appearance.create(appearance_params)

        # episode = Episode.find(params[:appearance][:episode_id])
        episode = Episode.find(params[:appearance][:episode_id])
        redirect_to episodes_path(episode)
    end

end

# if @comments.save
#     redirect_to(:action => 'showbooks')
#   else
#     redirect_to(:action => 'home')
# "appearance"=>{"episode_id"=>"1", "guest_id"=>"1", "rating"=>"5"}
