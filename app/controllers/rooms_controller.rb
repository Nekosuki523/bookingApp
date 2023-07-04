class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create 
    @room = Room.new (room_params)
    if @room.save
      redirect_to :rooms
    else
      render "new"
    end
  end

  def show
    @room = Room.find (params[:id])
  end
  
  private
  def room_params
    params.require(:room).permit(:name_facility, :introduction, :price, :address, :avatar, :avatar_cache)
  end
end
