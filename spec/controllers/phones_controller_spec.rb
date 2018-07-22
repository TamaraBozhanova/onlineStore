require 'rails_helper'

RSpec.describe PhonesController do

  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "assigns @phone" do
      get :index
      assigns(:phone) {should == Phone.all}
    end
  end
end
