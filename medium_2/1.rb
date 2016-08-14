sentences = File.open('pg84.txt').read.strip.split(/\.|\?|!/)
longest_sentence = sentences.sort_by { |sentence| sentence.split.count }.last
puts "The longest sentence is #{longest_sentence.split.count}"
