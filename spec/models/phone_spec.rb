require 'rails_helper'


RSpec.describe Phone, type: :model do
  context "validation tests" do
  it 'it ensures name is presence' do
   phone = Phone.new(price: 8)
    expect(phone.valid?).to eq(false)
  end
  it 'it ensures price is presence' do
    phone = Phone.new(name: "Test content")
    expect(phone.valid?).to eq(false)
  end
  it 'it ensures description is presence' do
    phone = Phone.new(name: "Test content")
    expect(phone.valid?).to eq(false)
  end
  it 'it ensures price is greater_than: 0, allow_nil: true' do
    phone = Phone.new(price: -1)
    expect(phone.valid?).to eq(false)
  end
  it 'should be able to save phone' do
    phone = Phone.new(name: "Test content", price: 12, description: "Test content" )
    expect(phone.save).to eq(true)
  end
  end
  end