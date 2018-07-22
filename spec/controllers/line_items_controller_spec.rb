require 'rails_helper'

RSpec.describe LineItemsController do
  describe "PUT update" do
    it "redirected to carts_path" do
      @cart = FactoryGirl.create(:cart)
      session[:cart_id] = @cart.id
      @line_item = FactoryGirl.create(:line_item)
      @cart.line_items << @line_item
      @line_item_attr = FactoryGirl.attributes_for(:line_item)
      put :update, :params => { :id => @line_item.id , :line_item => @line_item_attr }
      expect(response).should redirect_to(line_item_path)
    end

    it "assign to @line_items" do
      @cart = FactoryGirl.create(:cart)
      session[:cart_id] = @cart.id
      @line_item = FactoryGirl.create(:line_item)
      @cart.line_items << @line_item
      @line_item = FactoryGirl.create(:line_item)
      @cart.line_items << @line_item
      @line_item = FactoryGirl.create(:line_item)
      @cart.line_items << @line_item
      @line_item_attr = FactoryGirl.attributes_for(:line_item)
      @line_items = @cart.line_items
      put :update, :params => {:id => @line_item.id, :line_item => @line_item_attr}
      assigns(:line_items) { should == @line_items }
    end
  end

    describe "DELETE destroy" do
      it "redirect to cart_path(@cart)" do
        @cart = FactoryGirl.create(:cart)
        session[:cart_id] = @cart.id
        @line_item = FactoryGirl.create(:line_item)
        @cart.line_items << @line_item
        delete :destroy, :params => {id: @line_item.id}
        response.should redirect_to(cart_path(@cart))
      end

      it "deletes @line_item" do
        @cart = FactoryGirl.create(:cart)
        session[:cart_id] = @cart.id
        @line_item = FactoryGirl.create(:line_item)
        @cart.line_items << @line_item
        expect { delete :destroy, :params => {:id => @cart.line_items.first.id } }.to change {
          @cart.line_items.count }.by(-1)
        end
    end
   describe "POST create" do
    # it "redirected to root_path" do
    #   @line_item_attr = FactoryGirl.attributes_for(:line_item)
    #   post :create, :params => { :line_item => @line_item_attr }
    #   expect(response).should redirect_to(root_path)
    # end
    # it "assign to @cart" do
    #   @phone = FactoryGirl.attributes_for(:phone)
    #   @cart = FactoryGirl.create(:cart)
    #   session[:cart_id] = @cart.id
    #   @line_item_attr = FactoryGirl.attributes_for(:line_item)
    #   post :create, :params => { :line_item => @line_item_attr }
    #   assigns(:line) {should == @cart}
    # end
    # it "assign to @line_item" do
    #       @cart = FactoryGirl.create(:cart)
    #       session[:cart_id] = @cart.id
    #       @line_item_attr = FactoryGirl.attributes_for(:line_item)
    #       @line_item =  @cart.line_items.new(@line_item_attr)
    #       post :create, :params => { :line_item => @line_item_attr }
    #       assigns(:line_item) {should == @line_item}
    # end
  end
end
