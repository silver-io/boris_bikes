require 'garage'

describe Garage do

  let(:garage) { Garage.new(:capacity => 10) }
  let(:bike)   { Bike.new }


  it "has a default capacity on initialising" do
    expect(garage.capacity).to eq(10)
  end

end