# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Game, type: :model do
  context 'Relationships' do
    it { is_expected.to have_many(:rooms).dependent(:restrict_with_error) }
  end
end
