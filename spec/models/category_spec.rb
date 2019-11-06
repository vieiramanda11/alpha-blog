require 'rails_helper'

RSpec.describe Category, type: :model do

  subject { Category.new(name: "News") }
  before { subject.save }
  
  it "should be valid" do
    expect(subject).to be_valid
  end

  it "name should be present" do
    category = Category.new(name: nil)
    expect(category).to_not be_valid
  end

  it "name should be unique" do
    category = Category.new(name: "News")
    expect(category).to_not be_valid
  end

  it "name should not be too long" do
    subject.name = "a" * 26
    expect(subject).to_not be_valid
  end

  it "name should not be too short" do
    subject.name = "a"
    expect(subject).to_not be_valid
  end
end