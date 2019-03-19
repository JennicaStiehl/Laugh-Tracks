require 'rails_helper'
RSpec.describe 'as a registered user' do
  before :each do
    @user = User.create(username:"jandoe", password: "password1")
    @c1 = Comedian.create(name: "John Mulaney", age: 20, city: "New Jersey")
    @favorite = Favorite.create(user: @user, comedian: @c1)
    @sp1 = Special.create(name: "Kid Gorgeous", length: 60, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fjohn-mulaney-kid-gorgeous-radio-city-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian: @c1)
  end
  xit 'allows me to favorite a comedian' do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)

    visit comedians_path

    within(id: "comedian-#{@c1.id}") do
      click_on "Favorite"
    end

    expect(current_path).to eq(user_path(@user))

    within(class:"favorites") do
      expect(page).to have_content(@c1.name)
    end
  end
end
