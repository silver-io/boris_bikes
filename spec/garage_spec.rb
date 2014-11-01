require 'garage'
require 'bike_container'

describe Garage do

    let(:bike)    {Bike.new}
    let(:garage)  {Garage.new}


    context "at initialization" do
       it "has a default capacity"
         expect(garage.capacity).to eq(10)
       end
    end
