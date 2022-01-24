# Check Inheritance Hierarchy
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482672#search) is the link to the video.

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

Manager.ancestors #=> [Manager, Employee, Object, PP::ObjectMixin, Kernel, BasicObject]
Worker.ancestors #=> [Worker, Employee, Object, PP::ObjectMixin, Kernel, BasicObject]

Manager.superclass #=> Employee
Worker.superclass #=> Employee

Manager < Employee #=> true
Manager < Object #=> true
Employee < Manager #=> false

# Edge cases
Manager < Kernel #=> true (works with modules)
Manager < Manager #=> false
Manager < Worker #=> nil
Manager < String #=> nil
