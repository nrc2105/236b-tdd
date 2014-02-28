#Tests the Triangle class
#Author: Nicholas Cummins (ncummins@brandeis.edu)

require 'minitest/autorun'
require_relative '../triangle'


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