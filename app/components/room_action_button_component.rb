# frozen_string_literal: true

class RoomActionButtonComponent < ApplicationComponent
  attr_reader :user, :room

  def initialize(user:, room:)
    @user = user
    @room = room
  end

  def display_enter?
    !players_user_ids.include?(user.id)
  end

  def display_leave?
    players_user_ids.include?(user.id)
  end

  def display_full?
    players.size >= room.game.team_size
  end

  private

  def players
    @players = room.players
  end

  def players_user_ids
    @players_user_ids = players.map(&:user_id)
  end
end
