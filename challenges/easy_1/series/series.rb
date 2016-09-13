class Series
  attr_reader :numbers

  def initialize(str)
    @numbers = str
  end

  def slices(n)
    raise ArgumentError if n > numbers.size
    ints =  numbers.chars.map(&:to_i)
    result = []

    ints.each_index do |i|
      new_slice = ints.slice(i, n)
      result << new_slice if correct_size?(new_slice, n)
    end

    result
  end

  def correct_size?(slice, size)
    new_slice.size == n
  end
end
