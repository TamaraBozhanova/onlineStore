require 'rails_helper'

RSpec.describe LineItem, type: :model do
  # before do
  #
  # end

  it "has a valid factory" do
    FactoryGirl.build(:line_item).should be_valid
  end

  it "calculate a total price" do
    line_item = FactoryGirl.build(:line_item, phone: FactoryGirl.build(:phone, price:100))
    line_item.total_price.should == 300
  end

end