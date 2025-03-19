# Notes:
#   * Monkey patching - adding features to predefined, existing class

[1, 2, 3, true, "Hello", :ok].custom_sum #=> undefined method `custom_sum' for [1, 2, 3, true, "Hello", :ok]:Array (NoMethodError)
class Array
  def custom_sum
    total = 0
    self.each { |item| total += item if item.is_a?(Numeric) }
    total
  end
end
[1, 2, 3, true, "Hello", :ok].custom_sum #=> 6

class Hash
  def identify_duplicate_values
    values = []
    duplicates = []

    self.each_value do |value|
      values.include?(value) ? duplicates << value : values << value
    end

    duplicates.uniq
  end
end
{
  a: 1,
  b: 2,
  c: 1,
  d: 3,
  e: 1
}.identify_duplicate_values #=> [1]

class Fixnum
  def custom_times
    i = 1
    while i <= self
      yield(i)
      i +=1
    end
  end
end
5.custom_times { |time| p time }
# OUTPUT:
#   1
#   2
#   3
#   4
#   5
