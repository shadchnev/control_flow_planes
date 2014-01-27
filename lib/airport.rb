class Airport

DEFAULT_CAPACITY = 50

	def initialize(options ={})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@planes = []
	end

	def plane_count
		@planes.count
	end

	def dock(plane)
		raise "No plane should land" if stormy_weather?
		raise "Airport is full" if full?
		@planes << plane
	end

	def stormy_weather?
		@stormy_weather
	end

	def take_off(plane)	
		raise "No plane should take off" if stormy_weather?
		@planes.delete(plane)
	end

	def full?
		@capacity == plane_count
	end

	# why would the airport check that a plane is flying?
	def flying(plane)
	end
 	
end 	
