require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationships' do
    it { should have_many :favorites}
    it { should have_many(:comedians).through(:favorites) }
  end

  describe 'validations' do
    it { should validate_presence_of :username }
    it { should validate_uniqueness_of :username }
    it { should validate_presence_of :password }
  end

  describe 'Instance Methods' do
    xit 'can change the value of the active flag' do
      user = User.create(username: "janer", password:"janer")
      actual = user.set_active_flag
      expect(actual).to eq(false)
    end
  end
end
