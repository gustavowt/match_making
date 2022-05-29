# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Challenge, type: :model do
  context 'Relationships' do
    it { is_expected.to belong_to(:challenger).class_name(Room.name).with_foreign_key(:challenger_id) }
    it { is_expected.to belong_to(:challenged).class_name(Room.name).with_foreign_key(:challenged_id) }
  end
end
