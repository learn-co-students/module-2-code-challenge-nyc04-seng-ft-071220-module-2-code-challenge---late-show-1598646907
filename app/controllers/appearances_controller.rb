class AppearancesController < ApplicationController

    validates :rating, inclusion: {in: 1..5}

    #A Guest should only appear on a given Episode once.
    #Use "uniqueness"

def index
    @appearances = Appearance.all
end

def show 
    @appearance = Appearance.find(params[:id])
end

def new 
    @appearance = Appearance.new()
end

def create
    @appearance = Appearance.create(appearance_params)
    if @appearance.valid?
        redirect_to @appearance.guest
    else 
        redirect_to appearance_path
    end
end

private

def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id)
end

end
