# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Profile, type: :model do
  context 'Relationships' do
    it { is_expected.to belong_to(:user) }
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end
end
