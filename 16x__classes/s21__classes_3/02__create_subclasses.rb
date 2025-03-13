# Create Subclasses

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

sviat = Employee.new("Sviat", 24)
bob = Manager.new("Bob", 45)
dan = Worker.new("Dan", 34)

sviat.class #=> Employee
bob.class #=> Manager
dan.class #=> Worker

sviat.introduce #=> "Hi, my name is Sviat and I am 24 years old!"
bob.introduce #=> "Hi, my name is Bob and I am 45 years old!"
dan.introduce #=> "Hi, my name is Dan and I am 34 years old!"
