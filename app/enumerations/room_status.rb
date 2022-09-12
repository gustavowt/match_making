# frozen_string_literal: true

class RoomStatus < EnumerateIt::Base
  associate_values(
    :open,
    :closed,
    :ready
  )
end
