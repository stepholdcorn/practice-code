module BikeContainer

	DEFAULT_CAPACITY = 10

	attr_reader :bike
	attr_writer :capacity

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def bike_count
		@bikes.count 
	end

	def empty?
		bike_count == 0
	end

	def full?
		bike_count == capacity
	end

	def dock(bike)
		bike.dock!
		@bikes << bike
	end

	def release(bike)
		bike.rent!
		@bikes.delete(bike)
	end

end