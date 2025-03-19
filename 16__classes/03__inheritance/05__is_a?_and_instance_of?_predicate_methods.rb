# Notes:
#   * .is_a? - checks if an object is from specific class
#   * It checks also parent classes and modules, checks with `class.ancestors` method (e.g. Integer.ancestors)
#   * .instance_of? - true if object directly inherits from the class that passed in an argument (more strict)
#   * Class hierarchy: BasicObject -> Object ...

class Employee
  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old!"
  end
end

class Manager < Employee; end
class Worker < Employee; end

bob = Manager.new("Bob", 45)
dan = Worker.new("Dan", 34)

# .is_a?
bob.is_a?(Manager) #=> true
bob.is_a?(Employee) #=> true
bob.is_a?(Object) #=> true
bob.is_a?(String) #=> false
bob.is_a?(Object) #=> true
bob.is_a?(Kernel) #=> true
bob.is_a?(BasicObject) #=> true
dan.is_a?(Manager) #=> false

# .instance_of?
bob.instance_of?(Manager) #=> true
bob.instance_of?(Employee) #=> false
dan.instance_of?(Worker) #=> true
dan.instance_of?(Employee) #=> false
dan.instance_of?(Manager) #=> false
