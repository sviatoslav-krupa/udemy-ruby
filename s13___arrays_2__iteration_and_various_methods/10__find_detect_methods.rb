# The .find and .detect Methods on an Array

# .find / .detect - identical, returns first value that fits condition
# .find is preferable by Airbnb style guide
# To get last element - use .reverse before

words = %w[dictionary refrigerator platypus microwave]

words.find { |word| word.length > 8 } # => "dictionary"
words.detect { |word| word.length > 8 } # => "dictionary"
words.select { |word| word.length > 8 } # => ["dictionary", "refrigerator", "microwave"]

words.find { |word| word.length > 80 } # => nil
words.detect { |word| word.length > 80 } # => nil
words.select { |word| word.length > 80 } # => []
