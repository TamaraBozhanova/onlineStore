#require 'rspec'

describe 'My very first Rspec test class' do

  it 'should first test of many' do
    puts 'first test passed'

    #true.should == false
  end
end

describe String do
  let(:string){String.new}
  it "should be equal to an empty string" do

  end
end