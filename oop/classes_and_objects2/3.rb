class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def indentify
    self
  end
end

kitty = Cat.new('Sophie')
p kitty.indentify
