require_relative 'bike_container'

class DockingStation

	include BikeContainer

	DEFAULT_CAPACITY = 12

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
		@bikes = []
	end

	def has_broken?(bike)
		bike.broken?
	end

	def notify_van(van, bike)
		van.notification! if has_broken?
		@bikes.delete(bike)
	end

end

