# frozen_string_literal: true

class ChallengeActionButtonComponent < ApplicationComponent
  attr_reader :user, :room

  def initialize(user:, room:)
    @user = user
    @room = room
  end

  def can_challenge?
    room.owner_id != user.id
  end
end
