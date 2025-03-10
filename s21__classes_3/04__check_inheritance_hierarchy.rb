# Check Inheritance Hierarchy

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

Manager.ancestors #=> [Manager, Employee, Object, JSON::Ext::Generator::GeneratorMethods::Object, PP::ObjectMixin, Kernel, BasicObject]
Worker.ancestors #=> [Worker, Employee, Object, JSON::Ext::Generator::GeneratorMethods::Object, PP::ObjectMixin, Kernel, BasicObject]

Manager.superclass #=> Employee
Worker.superclass #=> Employee

Manager < Employee #=> true
Manager < Object #=> true
Employee < Manager #=> false

# Edge cases:
Manager < Kernel #=> true (works with modules)
Manager < Manager #=> false
Manager < Worker #=> nil
Manager < String #=> nil
