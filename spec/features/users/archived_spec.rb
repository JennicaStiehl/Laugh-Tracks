require 'rails_helper'
RSpec.describe 'as a registered user' do
  it 'allows me to disable my account' do
    user = User.create!(username:"janice", password:"janice")
    user.save
    # allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    visit user_path(user.id)
    expect(page).to have_content("Disable My Account")
    click_on "Disable My Account"
    expect(current_path).to eq(welcome_path)

    visit users_path

    expect(page).to_not have_content(user.username)
  end
end
