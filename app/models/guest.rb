class Guest < ApplicationRecord
    def index
        @guests = Guest.all
    end

    def show
        @guest = Guest.find(params[:id])
    end

end
