require 'rails_helper'

RSpec.describe 'as a registered user' do
  it 'can log me in' do
    user = User.create(username:"jandoe", password: "password1")
    visit welcome_path

    within(class:"navbar navbar-light") do
      click_on 'Login'
    end

    expect(current_path).to eq(login_path)

    within(class:"login-form") do
      fill_in('Username', :with => user.username)
      fill_in('Password', :with => user.password)
      click_on "Login"
    end

    expect(current_path).to eq(user_path(user.id))
    expect(page).to have_content("Welcome #{user.username}!")
    expect(page).to have_content('Log out')
    expect(page).to_not have_content("Login")
  end
  it 'can not log me in - sad path' do
    user = User.create(username: "jill", password: "secret")

    visit welcome_path

    within(class: "navbar navbar-light") do
      click_on "Login"
    end

    fill_in(:username, :with => user.username)

    within(class:"login-form") do
      click_on "Login"
    end

    expect(current_path).to eq(login_path)
  end
  it 'can log me out' do
    user = User.create(username:"janer", password:"janer")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    visit user_path(user.id)
    click_on "Log out"
    expect(current_path).to eq(welcome_path)
    expect(page).to have_content("Welcome to Laugh Tracks")
  end
end
