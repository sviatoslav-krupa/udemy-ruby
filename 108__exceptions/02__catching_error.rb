# * Syntax:
#   * rescue => error_object
#   * rescue ErrorClass => error_object (for specific error type)

def sum(a, b)
  begin
    a + b
  rescue TypeError => e
    puts "CLASS NAME: #{e.class}"
    puts "MESSAGE: #{e.message}"
  rescue NoMethodError => error
    puts "We're gonna do something different to resolve a NoMethodError"
    puts "CLASS NAME: #{error.class}"
    puts "MESSAGE: #{error.message}"
  end
end

sum(3, 5) #=> 8

sum(3, "5") #=> mil
# OUTPUT:
#   CLASS NAME: TypeError
#   MESSAGE: String can't be coerced into Integer

sum(nil, nil) #=> nil
# OUTPUT:
#   We're gonna do something different to resolve a NoMethodError
#   CLASS NAME: NoMethodError
#   MESSAGE: undefined method '+' for nil
