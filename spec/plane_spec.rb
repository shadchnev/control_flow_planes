require_relative "../lib/plane.rb"

describe Plane do 

	it "should not be broken when we created" do
		plane = Plane.new
		expect(plane).not_to be_broken
	end

	
end