require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  subject { User.new(username: "Amanda", email: "amanda@gmail.com", password: "amanda", admin: true) }
  before { subject.save }

  describe "GET #index" do
    it "should return a 200 OK status" do
      get :index 
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET #new" do
    it "should return a 200 OK status" do
      session[:user_id] = subject.id
      get :new
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET #show" do
    it "should return a 200 OK status" do
      get :show, params: { id: "1" }
      expect(response).to have_http_status(:ok)
    end
  end

  describe "#create" do
    it 'should redirect create when admin not logged in' do
      expect do
        post :create, params: { category: { name: "Sports" } }
      end.to_not change { Category.count }
      expect(response).to redirect_to(categories_path)
    end
  end
end
