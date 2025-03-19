# Notes:
#   * The order that modules are included in class matters:
#     * First of all, Ruby looks at the last module included in the class
#     * If multiple modules mix in methods with the same name, the last module included in the class will be used first

module A
  def whatever
    "Whatever"
  end

  def some_method
    "Hello from A"
  end
end

module B
  def some_method
    "Hello from B"
  end
end

class SomeClass
  include B
  include A
end

some_object = SomeClass.new
some_object.some_method #=> "Hello from A"
some_object.whatever    #=> "Whatever"
