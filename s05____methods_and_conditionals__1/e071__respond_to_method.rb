# The .respond_to? Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481610#overview) is the link to the video.

# .respond_to? checks if object can respond to a method (available for every single object)

num = 1000

p num.respond_to?(:next) # => true (Integer object can respond to :next method, :next is a symbol, not string)
p num.respond_to?("class") # => true
p num.respond_to?(:even?) # => true
p num.respond_to?(:respond_to?) # => true
p num.respond_to?(:length) # => false

if num.respond_to?(:next)
  p num.next
end # => 1001

if num.respond_to?(:length)
  p num.next
end # => (nothing prints, no error appears)

puts "Hello".respond_to?(:length) # => true
puts "Hello".respond_to?("class") # => true
puts "Hello".respond_to?(:upcase) # => true
puts "Hello".respond_to?(:odd?) # => false

# Symbol - lightweight String (label, doesn't have a lot of String methods)

