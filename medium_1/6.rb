require 'pry'

def minilang(command_string)
  puts ' '
  register = 0
  stack = []
  command_string.split.each do |command|
    case command
    when /\d+/    
      register = command.to_i 
    when 'PUSH'  
      stack.push(register)
    when 'ADD'   
      register += stack.pop
    when 'SUB'   
      register -= stack.pop
    when 'MULT'  
      register *= stack.pop
    when 'DIV'   
      register /= stack.pop
    when 'MOD'   
      register %= stack.pop
    when 'POP'   
      register = stack.pop
    when 'PRINT' 
      puts register
    end
  end
end


minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
