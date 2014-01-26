require_relative "../lib/plane"

describe Plane do

	let(:plane) {Plane.new}

	it "should have a landed status" do 
		expect(plane).not_to be_flying
	end

	it "should have a flying status" do
		plane.landed
		expect(plane).to be_flying
	end
	
end