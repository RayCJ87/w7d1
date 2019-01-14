class Person
  attr_writer :name
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

p = Person.new('L. Ron')
# puts p.name
p.name = "New Name"
puts p.name