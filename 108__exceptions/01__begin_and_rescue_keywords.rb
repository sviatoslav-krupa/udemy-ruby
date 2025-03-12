# What is an exception?
#   * An exception is an error in your program
#   * An error is a point in code where Ruby cannot correctly evaluate the code that it's been given
#   * Rescue means to save program by intercepting the error if it occurs and reacting to it
#   * `begin...end` - the section of the code that can go wrong
#   * `rescue` - section with the code that describes what to do in case if error occurs
#   * Inside a method, `begin` and `end` keywords can be omitted

def sum(a, b)
  begin
    a + b
  rescue # works with every type of error
    "Unknown"
  end
end

# Another syntax for methods
def sum(a, b)
  a + b
rescue # works with every type of error
  "Unknown"
end

sum(3, 5)     #=> 8
sum(3, "5")   #=> "Unknown"
sum(nil, nil) #=> "Unknown"
