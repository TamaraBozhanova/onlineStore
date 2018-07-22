require 'rails_helper'

RSpec.describe Cart, type: :model do
  it 'it ensures phone is added' do
    phone = FactoryGirl.create(:phone) #(name: "Test content", price: 12, description: "Test content", id: 1 )
    cart = Cart.new(id: 1)
    cart.add_phone(phone)
    expected = double("LineItem", id: nil, :phone_id => 1, :cart_id => 1, :created_at => nil, :updated_at => nil, :quantity => 1)
    expect(cart.line_items.first.phone).to eq(phone)
  end

  it "calculates the total price of the line_items" do
    phone1 = FactoryGirl.create(:phone)
    phone2 = FactoryGirl.create(:phone)

    line_item1 = LineItem.new
    line_item2 = LineItem.new

    line_item1.phone = phone1
    line_item2.phone = phone2
    line_item1.quantity = 2
    line_item2.quantity = 3

    cart = Cart.new
    cart.line_items << line_item1
    cart.line_items << line_item2
    cart.total_price.should == 500

  end
  it "has a valid factory" do
    FactoryGirl.create(:cart).should be_valid
  end
end