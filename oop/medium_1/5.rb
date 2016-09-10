class Minilang
  attr_reader :commands
  attr_accessor :register, :stack

  def initialize(commands_str)
    @commands = commands_str.split
    @register = 0
    @stack = []
  end

  def eval
    @commands.each do |command|
      if number?(command)
        place_into_register(command.to_i)
      elsif command == 'PUSH'
        push
      elsif command == 'ADD'
        add
      elsif command == 'SUB'
        sub
      elsif command == 'MULT'
        mult
      elsif command == 'DIV'
        div
      elsif command == 'MOD'
        mod
      elsif command == 'POP'
        if stack.empty?
          puts 'The stack is empty'
          break
        else
          pop
        end
      elsif command == 'PRINT'
        print
      else
        puts "Invalid token: #{command}"
        break
      end
    end
  end

  def place_into_register(n)
    self.register = n
  end

  def push
    self.stack <<  register
  end

  def add
    self.register += stack.pop
  end

  def sub
    self.register -= stack.pop
  end

  def mult
    self.register *= stack.pop
  end

  def div
    self.register /= stack.pop
  end

  def mod
    self.register %= stack.pop
  end

  def pop
    self.register = stack.pop
  end

  def print
    puts register 
  end

  def number?(str)
    str =~ /\A[-+]?[0-9]+\z/ 
  end

  def clean_stack
    self.stack = []
  end
end

puts '-' * 40
Minilang.new('PRINT').eval
# 0

puts '-' * 40
Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

puts '-' * 40
Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

puts '-' * 40
Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

puts '-' * 40
Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

puts '-' * 40
Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

puts '-' * 40
Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

puts '-' * 40
Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

puts '-' * 40
Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

puts '-' * 40
Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)
