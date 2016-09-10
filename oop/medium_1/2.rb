class FixedArray
  attr_reader :array

  def initialize(size)
    @array = []
    size.times { @array << nil }
  end

  def [](i)
    # valid_index?(i) ? array[i] : raise(IndexError)
    array.fetch(i)
  end

  def []=(i, obj)
    # valid_index?(i) ? (array[i] = obj) : raise(IndexError)
    array.fetch(i)
    array[i] = obj
  end

  def valid_index?(i)
    (i < array.size) && (i >= -array.size)
  end

  def to_a
    array
  end

  def to_s
    array.to_s
  end
end

fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end
