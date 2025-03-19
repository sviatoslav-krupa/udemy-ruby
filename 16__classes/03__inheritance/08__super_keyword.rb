# Notes:
#   * `super` - execute the method of a superclass with the same name

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
  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  def introduce
    super + " And I'm also a manager with a rank of #{rank}!"
  end
end

sviat = Employee.new("Sviat", 24)
bob = Manager.new("Bob", 45, 3)

sviat.rank  #=> undefined method `rank' for #<Employee:0x00007fd0db0c98e8 @name="Sviat", @age=24> (NoMethodError)
bob.rank    #=> 3

sviat.introduce #=> "Hi, my name is Sviat and I am 24 years old!"
bob.introduce   #=> "Hi, my name is Bob and I am 45 years old! And I'm also a manager with a rank of 3!"
