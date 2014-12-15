class Bike

	def initialize
		dock!
		fix!
	end

	def docked?
		@docked
	end

	def broken?
		@broken
	end

	def rent!
		@docked = false
	end

	def dock!
		@docked = true
	end

	def break!
		@broken = true
	end

	def fix!
		@broken = false
	end

end