require 'rails_helper'

RSpec.describe 'Signup a user', type: :feature do

  scenario "get new user form and signup user" do
    visit new_user_path
    expect do
      post users_path, params: { user: { username: "Charli", email: "charlixcx@email.com", password: "charlixcx" } }
    end.to change { User.count }
  end

  scenario "invalid signup user submission results in failure" do
    visit new_user_path
    expect do
      post users_path, params: { user: { username: " ", email: "charli.com " } }
    end.to_not change { User.count }
  end
end