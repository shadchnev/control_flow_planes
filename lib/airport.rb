class Airport

DEFAULT_CAPACITY = 50

	def initialize(options ={})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@planes = [ ]
	end

	def plane_count
		@planes.count
	end

	def dock(plane)
		@planes << plane
	end

	def stormy_weather?
		@stormy_weather
	end

	def take_off(plane)	
		@planes.delete(plane)
	end

	def full?
		@capacity = plane_count
	end
 	
end 	
