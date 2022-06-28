# frozen_string_literal: true

class PlayersController < ApplicationController
  before_action :load_room

  def create
    @player = @room.players.where(user: current_user).first_or_create

    respond_to do |format|
      format.turbo_stream
    end
  end

  def destroy
    @room.players.find_by(user_id: current_user.id).destroy

    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def load_room
    @room = Room.find(params[:room_id])
  end
end
