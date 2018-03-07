require './shape'
require './square'
require './triangle'
require './threeD'

triangle = Shape.new(3, 2, 45).extend(Triangle)
square = Shape.new(5).extend(Square)

puts triangle.draw
# puts "Notice that triangle is a shape and not triangle class"
# p triangle

my_shape = Shape.new(4, 5, 65).extend(Triangle).extend(Square)
puts my_shape.type
puts "My shape: #{my_shape.draw}"

puts "3D demo:::::::::::::::::::::"

sq = Shape.new.extend(Square)
puts sq.draw

sq.extend(ThreeD)
puts sq.draw(4)
puts sq.type
