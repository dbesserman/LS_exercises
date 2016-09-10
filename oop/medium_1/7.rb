class Guesser
  attr_accessor :remaining_guesses
  attr_reader :number, :min, :max

  require 'pry'
  def initialize(min, max)
    @min = min
    @max = max
    @number = (min..max).to_a.sample
    @remaining_guesses = initial_number_of_guesses
  end

  def play
    while remaining_guesses > 0
      puts "You have #{remaining_guesses} guesses remaining."
      guess = get_guess
      if correct?(guess)
        puts 'You win!'
        break
      elsif too_low?(guess)
        puts 'Your guess is too low'
      else
        puts 'Your guess is too high'
      end
      self.remaining_guesses -= 1
    end

    puts 'You are out of guesses. You loose' if remaining_guesses == 0
  end

  def get_guess
    input = nil
    loop do
      print "Enter a number between #{min} and #{max}: "
      input = gets.chomp.to_i
      break if valid?(input)
      puts 'Invalid input.'
    end

    input
  end

  def initial_number_of_guesses
    Math.log2(max - min).to_i + 1
  end

  def valid?(input)
    (min..max).include?(input)
  end

  def correct?(guess)
    guess == number
  end

  def too_low?(guess)
    guess < number
  end
end

game = Guesser.new(501, 1500)
game.play
