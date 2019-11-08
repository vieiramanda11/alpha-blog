require 'rails_helper'

RSpec.describe 'Creating a article', type: :feature do
  subject { User.new(username: "Amanda", email: "amanda@gmail.com", password: "amanda") }
  before { subject.save }

  scenario "get new article form and create article" do
    sign_in_as(subject, "amanda")
    visit new_article_path
    expect do
      post articles_path, params: { article: { title: "Article", description: "This is only for tests." } }
    end.to change { Article.count }
  end

  scenario "invalid article submission results in failure" do
    sign_in_as(subject, "amanda")
    visit new_article_path
    expect do
      post articles_path, params: { article: { title: "To", description: " " } }
    end.to_not change { Article.count }
  end
end