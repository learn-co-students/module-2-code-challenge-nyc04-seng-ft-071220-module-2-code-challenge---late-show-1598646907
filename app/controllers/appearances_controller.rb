class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
    @errors = flash[:errors]
  end

  def create
    @appearance =Appearance.create(appearance_param)
    @episode = Episode.find(params[:appearance][:episode_id])
    if @appearance.valid?
      redirect_to episode_path(@episode)
    else
      flash[:errors] = @appearance.errors.full_messages
      redirect_to new_appearance_path
    end
    
  end

  private

  def appearance_param
    params.require(:appearance).permit(:guest_id,:episode_id,:rating)
  end
end
