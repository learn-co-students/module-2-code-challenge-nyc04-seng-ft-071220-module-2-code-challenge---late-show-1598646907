class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end
  
  def show
    @guest=Guest.find(params[:id])
    # @guest=Guest.includes(:appearances).order('appearances.rating ASC')

   
    #  @guest.appearances.order(rating: :asc).map do |rating|
    #   rating.rating
    # end

  end

  
end
