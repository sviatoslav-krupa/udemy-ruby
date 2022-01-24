# Exclusive Instance Methods in Subclasses
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482678#search) is the link to the video.

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
  def yell
    "Who's the boss? I'm the boss!"
  end
end

class Worker < Employee
  def clock_in
    "Starting my shift"
  end

  def yell
    "I'm working, I'm working..."
  end
end

sviat = Employee.new("Sviat", 24)
bob = Manager.new("Bob", 45)
dan = Worker.new("Dan", 34)

sviat.introduce #=> "Hi, my name is Sviat and I am 24 years old!"
bob.introduce #=> "Hi, my name is Bob and I am 45 years old!"
dan.introduce #=> "Hi, my name is Dan and I am 34 years old!"

sviat.yell #=> undefined method `yell' for #<Employee:0x00007fb0010fcec8 @name="Sviat", @age=24> (NoMethodError)
bob.yell #=> "Who's the boss? I'm the boss!"
dan.yell #=> "I'm working, I'm working..."

sviat.clock_in #=> undefined method `clock_in' for #<Employee:0x00007fb0010fcec8 @name="Sviat", @age=24> (NoMethodError)
bob.clock_in #=> undefined method `clock_in' for #<Manager:0x00007fafff07a510 @name="Bob", @age=45> (NoMethodError)
dan.clock_in #=> "Starting my shift"
