# Monkey Patching I
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482658#search) is the link to the video.

# Monkey Patching - adding features to predefined, existing class
# Ruby combines all class definitions into one, the order in the file doesn't matter

[1, 2, 3, true, "Hello", :ok].custom_sum #=> undefined method `custom_sum' for [1, 2, 3, true, "Hello", :ok]:Array (NoMethodError)

class Array
  def custom_sum
    total = 0
    self.each { |item| total += item if item.is_a?(Numeric) }
    total
  end
end

[1, 2, 3, true, "Hello", :ok].custom_sum #=> 6
