# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Relationships' do
    it { is_expected.to have_one(:profile) }
  end

  context 'Validations' do
    it { is_expected.to validate_presence_of(:email) }
  end
end
