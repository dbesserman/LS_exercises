def enter(var_name, var)
  print "Enter a #{var_name}: "
  var << gets.chomp
end

noun       = ''
verb       = ''
adjective  = ''
adverb     = ''

enter('a noun', noun)
enter('a verb', verb)
enter('an adjective', adjective)
enter('an adverb', adverb)

print "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
