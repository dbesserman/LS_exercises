require 'pry'

def get_grade(grade_1, grade_2, grade_3)
  average_grade = (grade_1 + grade_2 + grade_3) / 3
  case average_grade
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  when 50..69  then 'F'
  end
end


puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
