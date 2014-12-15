class DockingStation

	DEFAULT_CAPACITY = 10

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bike
		@bikes = []
	end

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

	def has_broken?(bike)
		bike.broken?
	end

	def notify_van(van, bike)
		van.notification if has_broken?
		puts "This bike is broken, it has been sent to the garage"
		@bikes.delete(bike)
	end

	def release(bike)
		bike.rent!
		@bikes.delete(bike)
	end

end
