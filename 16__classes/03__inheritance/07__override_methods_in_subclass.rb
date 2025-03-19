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

class Manager < Employee
  def introduce
    "My name is #{name} and I'm a manager!"
  end
end

class Worker < Employee
  def introduce
    "I'm just a worker :("
  end
end

sviat = Employee.new("Sviat", 24)
bob = Manager.new("Bob", 45)
dan = Worker.new("Dan", 34)

sviat.introduce #=> "Hi, my name is Sviat and I am 24 years old!"
bob.introduce   #=> "My name is Bob and I'm a manager!"
dan.introduce   #=> "I'm just a worker :("
