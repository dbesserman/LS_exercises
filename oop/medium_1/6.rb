class PingGame
  attr_accessor :remaining_guesses
  attr_reader :number

  require 'pry'
  def initialize
    @remaining_guesses = 7
    @number = (1..100).to_a.sample
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
      print 'Enter a number between 1 and 100: '
      input = gets.chomp.to_i
      break if valid?(input)
      puts 'Invalid input.'
    end

    input
  end

  def valid?(input)
    (1..100).include?(input)
  end

  def correct?(guess)
    guess == number
  end

  def too_low?(guess)
    guess < number
  end
end

game = PingGame.new
game.play
