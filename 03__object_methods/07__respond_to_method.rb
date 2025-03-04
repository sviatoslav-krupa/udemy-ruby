# Notes
#   .respond_to? checks if object can respond to a method (available for every single object)
#   # Symbol - lightweight String (label, doesn't have a lot of String methods)

num = 1000
num.respond_to?(:next)        #=> true (Integer object can respond to :next method, :next is a symbol, not string)
num.respond_to?("class")      #=> true
num.respond_to?(:even?)       #=> true
num.respond_to?(:respond_to?) #=> true
num.respond_to?(:length)      #=> false

p num.next if num.respond_to?(:next) #=> 1001
# OUTPUT:
#   1001

p num.next if num.respond_to?(:length) #=> nil
# OUTPUT (outputs nothing):

str = "Hello"
str.respond_to?(:length)  #=> true
str.respond_to?("class")  #=> true
str.respond_to?(:upcase)  #=> true
str.respond_to?(:odd?)    #=> false
