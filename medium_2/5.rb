require 'pry'

def triangle(side_1, side_2, side_3)
  triangle_array = [side_1, side_2, side_3].sort
  if  invalid_triangle?(triangle_array) 
    :invalid
  elsif equilateral?(triangle_array) 
    :equilateral
  elsif isosceles?(triangle_array)
    :isosceles
  else 
    :scalene
  end
end

def invalid_triangle?(triangle_array)
  triangle_array[0] + triangle_array[1] <= triangle_array[2]
end

def equilateral?(triangle_array)
  triangle_array.uniq.size == 1
end

def isosceles?(triangle_array)
  triangle_array.uniq.size == 2
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
