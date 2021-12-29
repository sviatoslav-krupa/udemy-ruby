# Create Hash with Default Value
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482494#overview) is the link to the video.

# Literal syntax
fruit_prices = { banana: 1.05 }
fruit_prices[:banana] #=> 1.05
fruit_prices[:orange] #=> nil

fruit_prices = Hash.new("Not found") # parameter is a default value
fruit_prices[:banana] = 1.05
fruit_prices[:banana] #=> 1.05
fruit_prices[:orange] #=> "Not found"

# .default (https://ruby-doc.org/core-2.3.3/Hash.html#method-i-default)
fruit_prices.default = "Whoops! That doesn't exists here!"
fruit_prices.default #=> "Whoops! That doesn't exists here!"
fruit_prices[:banana] #=> 1.05
fruit_prices[:orange] #=> "Whoops! That doesn't exists here!"
