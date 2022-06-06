# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Room, type: :model do
  context 'Relationships' do
    it { is_expected.to belong_to(:owner).with_foreign_key(:user_id).class_name(User.name) }
    it { is_expected.to belong_to(:game) }
    it { is_expected.to have_many(:players) }
  end
end
