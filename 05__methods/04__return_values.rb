# Notes:
#   * Every method returns a final value.
#   * Explicit return - with :return keyword (returns evaluation near :return, method finishes it's work right after return).
#   * Implicit return - without :return keyword (last, final evaluation returns).

def add_two_numbers(num1, num2)
  puts "OK, I'm solving your math problem!"
  num1 + num2
end

add_two_numbers(3, 5) #=> 8
# OUTPUT:
#   OK, I'm solving your math problem!

add_two_numbers(8, 4) #=> 12
# OUTPUT:
#   OK, I'm solving your math problem!

# short form of a method definition
def return_nothing; end
return_nothing #=> nil

def return_string
  "Hello, World!"
end

def return_nothing_again
  puts "Hello, World!"
end

return_string               #=> "Hello, World!"
return_nothing_again        #=> nil (cause :print and :puts return nil; prints Hello, World!)
return_nothing_again.class  #=> NilClass
