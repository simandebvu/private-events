require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:events).with_foreign_key('creator_id') }
    it { should have_many(:invitations).with_foreign_key('attendee_id') }
  end

  describe 'validations' do
    subject { User.create(name: 'nameYes') }

    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(4).is_at_most(20) }
  end
end
