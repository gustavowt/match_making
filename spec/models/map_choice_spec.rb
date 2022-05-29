# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MapChoice, type: :model do
  context 'Relationships' do
    it { is_expected.to belong_to(:map) }
    it { is_expected.to belong_to(:match) }
    it { is_expected.to belong_to(:user) }
  end
end
