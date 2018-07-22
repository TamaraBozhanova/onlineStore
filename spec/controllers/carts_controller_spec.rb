require 'rails_helper'

RSpec.describe CartsController do

  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "assigns @cart" do
      get :index
      assigns(:cart) {should == Cart.all}
    end
  end

  describe "GET new" do
    it "renders the new template" do
      get :new
      response.should render_template('new')
    end

    it "assigns @cart not nil" do
      get :new
      expect(assigns(:cart)).to_not eq(nil)
    end

    it "assigns @cart to be a new Cart" do
      get :new
      expect(assigns(:cart)).to be_a_new(Cart)
    end
  end

  describe "GET show" do
    it "render :show view" do
      cart = FactoryGirl.create(:cart)
      get :show, params: { id: cart.id }
      expect(response).to render_template("show")
    end
  end
end

