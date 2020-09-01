class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @errors = flash[:error] 
    @guest = Guest.new
  end

  def create
    # byebug
    guest_params = params.require(:guest).permit(:name, :occupation)
    @guest = Guest.new(guest_params)
    if @guest.valid?
      @guest.save
      redirect_to guest_path(@guest)
    else
      flash[:error] = @guest.errors.full_messages
      redirect_to new_guest_path
    end
  end 



end
