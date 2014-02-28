require 'minitest/autorun'
require_relative '../rectangle'


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