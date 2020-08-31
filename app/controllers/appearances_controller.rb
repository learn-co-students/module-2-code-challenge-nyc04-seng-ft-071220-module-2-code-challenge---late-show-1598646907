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

        episode = Episode.find(params[:appearance][:episode_id])
        redirect_to episodes_path(@episode)
    end

end

    