require 'rails_helper'

RSpec.describe Guest, type: :model do
  describe '#validations' do
    it 'should test that the factory is valid' do
      expect(build :guest).to be_valid
    end

    it 'should validate the presence of an empty fullname' do
      guest = build :guest, fullname:''
      expect(guest).not_to be_valid
      expect(guest.errors.messages[:fullname]).to include("can't be blank")
    end

    # for the present use, (church guests), any other field can be relaxed and allow null
  end
end
