def step(min, max, stp)
  (min..max).each { |num| yield(num) if (num - min) % stp == 0 }
end

step(1, 10, 3) { |value| puts "value = #{value}" }
