class ApparanceController < ApplicationController

    def index
        @apparances = Apparance.all
    end

    def show 
        @apparance = Apparance.find(params([:id]))
    end

    def update 
        @apparance = Apparance.find(params([:id])
        @apparance.update(apparance_params)
        redirect_to_guest_path(@apparance.guest)
        redirect_to_show_path(@apparance.show)
    end 

  
end
