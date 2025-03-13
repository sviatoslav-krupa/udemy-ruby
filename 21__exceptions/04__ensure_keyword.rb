# Notes:
#   * `ensure` - section of the code that ALWAYS run no matter what

def sum(a, b)
  begin
    a + b
  rescue TypeError => e
    a = a.to_i
    b = b.to_i
    retry
  rescue NoMethodError => error
    puts "Can't solve this, sorry"
  ensure
    puts "I'm always going to run"
  end
end

sum(3, 5) #=> 8
# OUTPUT:
#   I'm always going to run

sum(3, "5") #=> 8
# OUTPUT:
#   I'm always going to run

sum("3", 5) #=> 8
# OUTPUT:
#   I'm always going to run

sum(nil, nil) #=> nil
# OUTPUT:
#   Can't solve this, sorry
#   I'm always going to run
