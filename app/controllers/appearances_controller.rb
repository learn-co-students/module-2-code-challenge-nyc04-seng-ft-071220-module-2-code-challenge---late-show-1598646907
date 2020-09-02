class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end


  def new
    @appearance = Appearance.new
    @guests     = Guest.new
    @episode    = Episode.new 
  end

  def create
      
  end

  def update
 
  end

  def destroy

  end

  private
  def get_appearance

  end

end