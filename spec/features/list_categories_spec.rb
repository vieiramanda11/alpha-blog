require 'rails_helper'

RSpec.describe 'Listing categories', type: :feature do

  subject { Category.new(name: "News") }
  before { subject.save }

  let(:category) { Category.new(name: "Sports") }
  before { category.save }

  scenario "should show category listing" do
    visit categories_path
    expect(page).to have_current_path(categories_path)
    expect(page).to have_content(subject.name)
    expect(page).to have_content(category.name)
  end
end