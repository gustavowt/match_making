class RoomsController < ApplicationController
  respond_to :html, :json

  before_action :load_room, only: %i[edit update show]
  def index
    @rooms = Room.includes(:game).all
  end

  def new
    @room = Room.new
  end

  def create
    @room = current_user.rooms.build(room_parameters)

    @room.save

    respond_with(@roow, location: rooms_path)
  end

  def edit; end

  def update
    @room.update(room_parameters)

    respond_with(@room)
  end

  private

  def room_parameters
    params.require(:room).permit(:game_id, :visibility, :status)
  end

  def load_room
    @room = current_user.rooms.find(params[:id])
  end
end
