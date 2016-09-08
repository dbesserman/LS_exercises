pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets.select { |pet| pet == 'fish' }
print "I have a #{my_pet[0]}!"
