require 'pry'

def calculate_on_switches(nb_of_switches)
  switches = {}
  1.upto(nb_of_switches).each { |nb| switches[nb] = :on }
  perform_switching(switches)
  display_on_switches(switches)
end

def perform_switching(switches)
  i = 2
  switches.size.times do |_|
    switches.each_key { |nb| reverse_switch(switches, nb) if nb % i == 0 }
    i += 1
  end
end

def reverse_switch(switches, nb)
  switches[nb] == :on ? (switches[nb] = :off) : (switches[nb] = :on)
end

def display_on_switches(switches)
  switched_on = []
  switches.each { |nb, position| switched_on << nb if position == :on }
  puts "There are #{switched_on.count} switches that are on (#{switched_on.join(', ')})"
end

calculate_on_switches(5)
calculate_on_switches(10)
calculate_on_switches(1000)
