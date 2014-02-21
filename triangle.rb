require 'minitest/autorun'
require_relative 'point'

class Triangle

	attr_reader :area

	def initialize(point1, point2, point3)
		@point1 = point1
		@point2 = point2
		@point3 = point3
		@area = 0
		find_area
	end

	private

	def find_area
		@area = 0.5 * ((@point1.x - @point3.x)*(@point2.y - @point1.y) - (@point1.x - @point2.x)*(@point3.y - @point1.y)).abs
	end

end	

describe Triangle do
	
	before do
		@point1 = Point.new(1, 1)
		@point2 = Point.new(2, 1)
		@point3 = Point.new(2, 4)
		@triangle = Triangle.new(@point1, @point2, @point3)
	end

	it "should return its area" do
		@triangle.area.must_equal 1.5
	end


end