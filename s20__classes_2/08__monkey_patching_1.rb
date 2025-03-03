# Monkey Patching I

# Monkey Patching - adding features to predefined, existing class.

[1, 2, 3, true, "Hello", :ok].custom_sum #=> undefined method `custom_sum' for [1, 2, 3, true, "Hello", :ok]:Array (NoMethodError)

class Array
  def custom_sum
    total = 0
    self.each { |item| total += item if item.is_a?(Numeric) }
    total
  end
end

[1, 2, 3, true, "Hello", :ok].custom_sum #=> 6
