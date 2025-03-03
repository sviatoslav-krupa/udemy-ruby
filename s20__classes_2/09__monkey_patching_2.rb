# Monkey Patching II

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
=begin
  1
  2
  3
  4
  5
=end
