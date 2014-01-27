require './lib/airport'
require './lib/plane'

describe Airport do

	let(:plane) {Plane.new}
	let(:airport) {Airport.new(:capacity => 100)}

 it "should accept a plane" do
 	  expect(airport.plane_count).to eq(0)
 	  airport.dock(plane)
 	  expect(airport.plane_count).to eq(1)
 	end

 	it "should NOT accept a plane when weather is stormy" do
 		airport.dock(plane)
 		expect(airport).not_to be_stormy_weather
 	end

 	it "should let a plane take off" do
 		airport.dock(plane)
 		expect(airport.plane_count).to eq(1)
 		airport.take_off(plane)
 		expect(airport.plane_count).to eq(0)
 	end

  # This test is wrong. You dock a plane, check that it happens,
  # then check that the weather is ok and that we still have one plane.
  # Of course we have, why would it disappear if you don't tell it to take off?
 	it "should NOT let a plane take off when weather stormy" do
 		airport.dock(plane)
 		expect(airport.plane_count).to eq(1)
		expect(airport).not_to be_stormy_weather
		expect(airport.plane_count).to eq(1)
 	end

 	it "should know when is full" do
 		expect(airport).not_to be_full
 		100.times{airport.dock(Plane.new)}
 		expect(airport).to be_full
 	end

 	it "should know when a plane is flying" do
 	end

end
