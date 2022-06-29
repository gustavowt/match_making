# frozen_string_literal: true

class RoomStatus < EnumerateIt::Base
  associate_values(
    :closed,
    :ready
  )
end
