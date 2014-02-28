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
