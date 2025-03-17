# A Custom .each Method
def custom_each(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end
custom_each([1, 2, 3]) { |num| puts num ** 2 }
# OUTPUT:
#   1
#   4
#   9

custom_each(%w[Sviat Arnold Melissa]) { |name| p "#{name} is #{name.length}" }
# OUTPUT:
#   "Sviat is 5"
#   "Arnold is 6"
#   "Melissa is 7"


# A Custom .map Method
def custom_map(array)
  i = 0
  result = []
  while i < array.length
    result << yield(array[i])
    i += 1
  end
  result
end
custom_map([1, 2, 3]) { |num| num ** 2 }                    #=> [1, 4, 9]
custom_map(%w[Sviat Arnold Melissa]) { |name| name.upcase } #=> ["SVIAT", "ARNOLD", "MELISSA"]
