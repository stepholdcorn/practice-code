require_relative 'bike_container'

class Van

	include BikeContainer

	DEFAULT_CAPACITY = 6

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
		@bikes = []
		@notification = false
	end

	def notification!
		@notification = true
	end

	def notified?
		@notification
	end

end