def triangle(angle_1, angle_2, angle_3)
  angles_array = [angle_1, angle_2, angle_3]

  if (angles_array.inject(:+) != 180) || angles_array.include?(0)
    :invalid
  elsif angles_array.include?(90)
    :right
  elsif angles_array.any? { |angle| angle > 90 }
    :obtuse
  else
    :acute
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
