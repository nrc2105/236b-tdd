require 'minitest/autorun'
require_relative 'point'

class Rectangle

	attr_reader :area

	def initialize (point1, point2)
		@point1 = point1
		@point2 = point2
		find_area
	end

	private

	def find_area
		@area = ((@point1.x - @point2.x) * (@point1.y - @point2.y)).abs
	end

end

describe Rectangle do

	before do
		@point1 = Point.new(1,1)
		@point2 = Point.new(2,2)
		@rectangle = Rectangle.new(@point1, @point2)
	end

	it "should return its area" do
		@rectangle.area.must_equal 1
	end

end