# frozen_string_literal: true

class ChallengesController < ApplicationController
  def index
    @rooms = Room.ready_to_challenge
  end
end
