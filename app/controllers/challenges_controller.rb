# frozen_string_literal: true

class ChallengesController < ApplicationController
  respond_to :turbo_stream, :html

  before_action :load_room, except: :show
  before_action :load_challenger

  def show
    @rooms = Room.ready.discarding(@challenger.id)
  end

  def create
    @challenge = @challenger.challenging.where(
      challenged_id: @room.id
    ).first_or_create

    respond_with(@challenge, location: challenges_path)
  end

  def update; end

  def destroy; end

  private

  def load_room
    @room = Room.find(params[:room_id])
  end

  def load_challenger
    @challenger = current_user.current_room
  end
end
