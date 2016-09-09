class Pet
  attr_reader :breed, :name

  def initialize(breed, name)
    @breed = breed
    @name = name
  end

  def to_s
    "A #{breed} named #{name}"
  end
end

class Owner
  attr_reader :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def <<(pet)
    pets << pet if (pet.class == Pet)
  end

  def number_of_pets
    pets.count
  end

  def to_s
    str = "#{name} has adopted the following pets"
    pets.each { |pet| str += "\n #{pet}" }
    str
  end
end

class Shelter
  attr_reader :adopters

  def initialize
    @adopters = []
  end

  def adopt(owner, pet)
    owner << pet  
    adopters << owner unless adopters.include?(owner)
  end

  def print_adoptions
    adopters.each { |owner| puts owner } 
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
