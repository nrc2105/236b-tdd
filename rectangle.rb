#The rectangle class allows for the creation of a rectangle from two points 
#that can calculate its own area
#Author: Nicholas Cummins (ncummins@brandeis.edu)

require 'minitest/autorun'
require_relative 'point'

class Rectangle

	attr_reader :area

	#Initializes a new rectangle with two points representing opposing corners
	def initialize (point1, point2)
		@point1 = point1
		@point2 = point2
		find_area
	end

	private

	#Calculates the area using base * height
	def find_area
		@area = ((@point1.x - @point2.x) * (@point1.y - @point2.y)).abs
	end

end
