require 'rails_helper'

RSpec.describe Category, :type => :model do

  context "Validations" do
    it "has a valid factory" do
      FactoryGirl.create(:category).should be_valid
    end

    it "is valid with valid attributes" do
      expect(FactoryGirl.create(:category)).to be_valid
    end

    it "is not valid without a name" do
      expect(FactoryGirl.build(:category, name: nil)).to_not be_valid
    end
  end
end