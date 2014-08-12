#we're describing the functionality of a specific class, Bike
require 'bike'
describe Bike do
	# this is a specific feature (behaviour)
	# that we expect to be present
	it "should not be broken after we create it" do
		the_bike = Bike.new # initialise a new object of a Bike class
		# expect an instance of this class to have
		#a method "broken?" that should return false
	expect(the_bike).not_to be_broken
	end
end		