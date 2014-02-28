#Tests the Circle class
#Author: Nicholas Cummins (ncummins@brandeis.edu)

require 'minitest/autorun'
require_relative '../circle'

describe Circle do

	before do
		@center = Point.new(1,1)
		@circle = Circle.new(@center, 4)

	end

	it "should have a float radius" do
		@circle.radius.must_be_instance_of Float
	end

	it "should return correct area" do
		@circle.area.must_equal 16*Math::PI
	end

end