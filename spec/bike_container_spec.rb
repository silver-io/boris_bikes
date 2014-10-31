require 'bike_container'

class ContainerHolder; include BikeContainer; end


describe BikeContainer do

  let(:bike) { Bike.new }
  let(:holder) { ContainerHolder.new }

  def fill_holder(holder)
    10.times { holder.dock(Bike.new) }
  end

  it "should accept a bike" do
    bike
    holder
    #we expect the holder to have 0 bikes
    expect(holder.bike_count).to eq(0)
    #let's dock a bike into the holder
    holder.dock(bike)
    #we now expect the holder to have 1 bike
    expect(holder.bike_count).to eq(1)
  end

  it "should release a bike" do
    holder.dock(bike)
    holder.release(bike)
    expect(holder.bike_count).to eq(0)
  end

  it "should know when it's full" do
    expect(holder).not_to be_full
    fill_holder holder
    expect(holder).to be_full
  end

  it "should not accept a bike if it is full" do
    fill_holder holder
    expect(lambda { holder.dock(bike) }).to raise_error(RuntimeError)
  end

end


