#The circle class allows for the creation of a circle with a center point and radius
#that can calculate its area.
#Author: Nicholas Cummins (ncummins@brandeis.edu)

require_relative 'point'

class Circle

	attr_reader :area, :radius

	#Initializes a new circle with the center and radius as params
	def initialize(center, radius)
		@center = center
		@radius = radius.to_f
		find_area
	end

	private

	#Calculates the area of the circul using Pi * r squared
	def find_area
		@area = Math::PI * @radius * @radius
	end

end

