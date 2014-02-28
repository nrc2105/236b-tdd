#Test for the Scene class
#Author: Nicholas Cummins (ncummins@brandeis.edu)

require 'minitest/autorun'
require_relative '../scene'


describe Scene do

	before do
		@rectpoint1 = Point.new(1,1)
		@rectpoint2 = Point.new(2,2)
		@tripoint1 = Point.new(3,1)
		@tripoint2 = Point.new(4,1)
		@tripoint3 = Point.new(4,3)
		@circpoint = Point.new(10,1)
		@circradius = 4
		@rectangle = Rectangle.new(@rectpoint1, @rectpoint2)
		@triangle = Triangle.new(@tripoint1, @tripoint2, @tripoint3)
		@circle = Circle.new(@circpoint, @circradius)
		@scene = Scene.new
		@scene.add_shape(@triangle)
		@scene.add_shape(@circle)
	end

	it "should be able to add shapes" do
		@scene.add_shape(@rectangle)
		@scene.shape_count.must_equal 3
	end

	it "should be able to calculate the total area" do
		@scene.total_area.must_be :> , 0
	end

	it "should be able to remove shapes" do
		@scene.remove_shape(@circle)
		@scene.shape_count.must_equal 1
	end

end
