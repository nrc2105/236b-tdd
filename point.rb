#The point class stores the x and y coordinates of a point object.
#Author: Nicholas Cummins (ncummins@brandeis.edu)

require 'minitest/autorun'

class Point

	attr_reader :x, :y
	
	#Initializes a point with x and y coordinates
	def initialize (x, y)
		@x = x.to_f
		@y = y.to_f
	end

end

describe Point do

	before do
		@point1 = Point.new(2, 3)
		@point2 = Point.new(2, 3)
		@point3 = Point.new(1, 1)
		@point4 = Point.new(2, 2)
		@point5 = Point.new(3, 3)
		@point6 = Point.new(2, 4)
		@point7 = Point.new(8, 8)
	end

	it "returns correct x coordinate" do
		@point1.x.must_equal 2
	end

	it "returns correct y coordinate" do
		@point1.y.must_equal 3
	end

end
