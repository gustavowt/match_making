# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Map, type: :model do
  context 'Relationships' do
    it { is_expected.to belong_to(:game) }
  end
end
