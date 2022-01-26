# The .is_a? and .instance_of? Predicate Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482674#search) is the link to the video.

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

# .is_a? - true if object inherits from the class that passed in an argument
bob.is_a?(Manager) #=> true
bob.is_a?(Employee) #=> true
bob.is_a?(Object) #=> true
dan.is_a?(Manager) #=> false
bob.is_a?(String) #=> false

# .instance_of? - true if object directly inherits from the class that passed in an argument (more strict)
bob.instance_of?(Manager) #=> true
bob.instance_of?(Employee) #=> false
dan.instance_of?(Worker) #=> true
dan.instance_of?(Employee) #=> false
dan.instance_of?(Manager) #=> false
