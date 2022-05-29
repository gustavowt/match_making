class RoomsController < ApplicationController
  respond_to :html, :json

  before_action :load_room, only: %i[edit update show]
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_parameters)

    @room.save

    respond_with(@roow)
  end

  def edit; end

  def update
    @room.update(room_parameters)

    respond_with(@room)
  end

  private

  def room_parameters
    params.require(:room).permit(:game_id, :visibility)
  end

  def load_room
    @room = Room.find(params[:id])
  end
end
