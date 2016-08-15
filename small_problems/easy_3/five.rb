def multiply(a, b)
  ( a * b ).round(1)
end

def square(a)
  multiply(a, a)
end

def a_exponent_b(a, b)
  result = a
  (b - 1).times do
    result = multiply(result, a)
  end

  result
end

puts a_exponent_b(2, 4)
