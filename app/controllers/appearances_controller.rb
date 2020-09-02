class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all
    end

    def new
        @appearance = Appearance.new
    end

    def create
    end

    def show
        @appearance = Appearance.find(params[:id])
    end

    # def update
    # end

    # def edit
    # end

    # def destroy
    # end

end