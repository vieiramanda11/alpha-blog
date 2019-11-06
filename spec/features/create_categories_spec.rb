require 'rails_helper'

RSpec.describe 'Creating a category', type: :feature do
  scenario "get new category form and create category" do
    visit new_category_path
    expect(page).to have_current_path(new_category_path)
    fill_in "Name", with: "Health"
    click_on "Create Category"
    visit categories_path
    expect(page).to have_content("Health")
  end

  scenario "invalid category submission results in failure" do
    visit new_category_path
    expect(page).to have_current_path(new_category_path)
    fill_in "Name", with: " "
    click_on "Create Category"
    visit new_category_path
    expect(page).to have_field("Name")
  end
end