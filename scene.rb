require_relative 'point'
require_relative 'rectangle'
require_relative 'triangle'
require_relative 'circle'
require 'minitest/autorun'

class Scene

	def initialize
		@shapes = []
	end

	def shape_count
		@shapes.size
	end

	def total_area
		sum = 0
		@shapes.each do |shape|
			sum += shape.area
		end
		return sum
	end

	def add_shape(shape)
		@shapes << shape
	end

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
	end

	it "should be able to add shapes" do
		@scene.add_shape(@rectangle)
		@scene.add_shape(@triangle)
		@scene.add_shape(@circle)
		@scene.shape_count.must_equal 3
	end

	it "should be able to calculate the total area" do
		@scene.add_shape(@circle)
		@scene.total_area.must_be :> , 0
	end

	it "should be able to remove shapes" do
		@scene.add_shape(@circle)
		@scene.add_shape(@triangle)
		@scene.remove_shape(@circle)
		@scene.shape_count.must_equal 1
	end

end