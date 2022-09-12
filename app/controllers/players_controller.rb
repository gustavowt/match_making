# frozen_string_literal: true

class PlayersController < ApplicationController
  respond_to :html
  before_action :load_room

  def create
    @player = @room.players.build(user: current_user)

    @player.save

    respond_with(@player, location: challenges_path)
  end

  def destroy
    @player = @room.players.find_by(user_id: current_user.id)

    @player.destroy

    respond_with(@player, location: rooms_path)
  end

  private

  def load_room
    @room = Room.find(params[:room_id])
  end
end
