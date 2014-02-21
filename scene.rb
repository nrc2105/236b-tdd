#A scene holds shapes and can calculate total area, as well as add new shapes,
#remove old ones, and return the number of shapes in the scene.
#Author: Nicholas Cummins (ncummins@brandeis.edu)

require_relative 'point'
require_relative 'rectangle'
require_relative 'triangle'
require_relative 'circle'
require 'minitest/autorun'

class Scene

	#Initializes a new scene with no shapes
	def initialize
		@shapes = []
	end

	#Returns the number of shapes
	def shape_count
		@shapes.size
	end

	#Calculates the total area of all shapes
	def total_area
		sum = 0
		@shapes.each do |shape|
			sum += shape.area
		end
		return sum
	end

	#Adds a shape
	def add_shape(shape)
		@shapes << shape
	end

	#Removes the desired shape
	def remove_shape(shape)
		@shapes.delete(shape)
	end

end

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