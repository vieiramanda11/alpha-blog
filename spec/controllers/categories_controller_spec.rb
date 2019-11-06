require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  describe "GET #index" do
    it "should return a 200 OK status" do
      get :index 
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET #new" do
    it "should return a 200 OK status" do
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
end
