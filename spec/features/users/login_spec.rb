require 'rails_helper'

RSpec.feature :User, :feature do
  before :each do
    @john = Comedian.create(name:"john", age: 35, city:"Atlanta")
    @jsp = @john.specials.create(name:"jokes", length:45)
    @jane = User.create(name:"Jane", password:"password")
    @fav1 = @jane.favorites.create(comedian: @john)
  end
  describe 'as a visitor' do
    it 'can me log in' do
      visit welcome_path

      fill_in "username", with: @jane.name
      fill_in "password", with: @jane.password
      click_on "Login"

      expect(current_path).to eq(comedians_path)
    end
  end
end
