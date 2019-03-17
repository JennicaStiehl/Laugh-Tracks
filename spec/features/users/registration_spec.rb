require 'rails_helper'
RSpec.describe "User registration" do
  it 'creates a new user' do
    visit welcome_path

    click_on "Register as a User"
    expect(current_path).to eq(new_user_path)

    fill_in(:user_username, :with => "jandoe")
    fill_in(:user_password, :with => "password1")

    click_on "Create User"

    new_user = User.last
    expect(current_path).to eq(user_path(new_user))
    expect(page).to have_content("Welcome #{new_user.username}!")
  end
  #sad path test, submit an empty reg form, expect to see errors
  it 'creates a new user - sad path' do
    visit welcome_path

    click_on "Register as a User"
    expect(current_path).to eq(new_user_path)

    fill_in(:user_username, :with => " ")
    fill_in(:user_password, :with => " ")

    click_on "Create User"

    new_user = User.last

    expect(page).to have_content("error")
  end
end
