#The triangle class allows for the creation of a triangle with three points that can
#calculate its area.
#Author: Nicholas Cummins (ncummins@brandeis.edu)

require_relative 'point'

class Triangle

	attr_reader :area

	#Initializes a Triangle with three points and calculates area
	def initialize(point1, point2, point3)
		@point1 = point1
		@point2 = point2
		@point3 = point3
		@area = 0
		find_area
	end

	private

	#Finds area with the coordinate matrix formula
	def find_area
		@area = 0.5 * ((@point1.x - @point3.x)*(@point2.y - @point1.y) - (@point1.x - @point2.x)*(@point3.y - @point1.y)).abs
	end

end	
