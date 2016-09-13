class Sieve
  attr_accessor :marked_numbers
  attr_reader :max

  def initialize(max)
    @max = max
    @marked_numbers = []
  end

  def primes
    sample = (2..max).to_a
    result = []

    sample.each do |x|
      next if marked?(x) 
      result << x
      mark_multiples(x, sample)
    end

    result
  end

  def marked?(num)
    marked_numbers.include?(num)
  end

  def mark_multiples(num, sample)
    multiples = sample.select { |y| y % num == 0 } - [num]
    self.marked_numbers += multiples
  end
end
