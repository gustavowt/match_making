# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Match, type: :model do
  context 'Relationships' do
    it { is_expected.to belong_to(:room) }
    it { is_expected.to belong_to(:challenge) }
  end
end
