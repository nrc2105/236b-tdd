#The point class stores the x and y coordinates of a point object.
#Author: Nicholas Cummins (ncummins@brandeis.edu)

class Point

	attr_reader :x, :y
	
	#Initializes a point with x and y coordinates
	def initialize (x, y)
		@x = x.to_f
		@y = y.to_f
	end

end
