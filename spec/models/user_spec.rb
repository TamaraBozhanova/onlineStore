require 'rails_helper'

RSpec.describe User, :type => :model do

  describe "Validations" do
    it "has a valid factory" do
      FactoryGirl.create(:user).should be_valid
    end

    it "is valid with valid attributes" do
      expect(FactoryGirl.create(:user)).to be_valid
    end

    it "is not valid without a password" do
      expect(FactoryGirl.build(:user, password: nil)).to_not be_valid
    end

    it "is not valid without an email" do
      expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
    end

  end
end