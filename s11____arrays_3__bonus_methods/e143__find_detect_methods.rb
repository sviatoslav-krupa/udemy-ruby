# The .find and .detect Methods on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482408#overview) is the link to the video.

# .find / .detect - identical, returns first value that fits condition
# .find is preferable by Airbnb style guide
# To get last element - user .reverse before

words = %w[dictionary refrigerator platypus microwave]

words.find { |word| word.length > 8 } #=> "dictionary"
words.detect { |word| word.length > 8 } #=> "dictionary"
words.select { |word| word.length > 8 }[0]

words.find { |word| word.length > 80 } #=> nil
words.detect { |word| word.length > 80 } #=> nil
words.select { |word| word.length > 80 }[0] #=> nil
