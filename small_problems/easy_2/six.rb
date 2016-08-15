# (1..99).to_a.each { |num| puts num if num.off? }
puts (1..99).to_a.select { |num| num.odd? }
# 1.upto(99) { |num| puts num if num.odd? }
