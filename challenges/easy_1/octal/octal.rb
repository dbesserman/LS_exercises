class Octal
  attr_reader :digits, :valid_input

  def initialize(number)
    @valid_input = valid?(number)
    @digits = number.chars.map(&:to_i)
  end

  def valid?(input)
    !(input =~ /[a-z8-9]/)
  end

  def to_decimal
    return 0 unless valid_input

    reverse_digits = digits.reverse

    reverse_digits.map.with_index do |digit, i|
      digit * (8 ** i)
    end.inject(:+)
  end
end
