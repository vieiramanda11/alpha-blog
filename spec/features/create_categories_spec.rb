require 'rails_helper'

RSpec.describe 'Creating a category', type: :feature do
  subject { User.new(username: "Amanda", email: "amanda@gmail.com", password: "amanda", admin: true) }
  before { subject.save }

  scenario "get new category form and create category" do
    sign_in_as(subject, "amanda")
    visit new_category_path
    expect do
      post categories_path, params: { category: { name: "Health" } }
    end.to change { Category.count }
  end

  scenario "invalid category submission results in failure" do
    sign_in_as(subject, "amanda")
    visit new_category_path
    expect do
      post categories_path, params: { category: { name: " " } }
    end.to_not change { Category.count }
  end
end