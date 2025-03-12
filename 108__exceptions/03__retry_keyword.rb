# Notes:
#   * `retry` - executes `begin` section one more time
#   * Be careful!! There is a possibility of an infinite loop!!!

def sum(a, b)
  begin
    a + b
  rescue TypeError => e
    a = a.to_i
    b = b.to_i
    retry
  rescue NoMethodError => error
    a = 0
    b = 0
    retry
  end
end

sum(3, 5)     #=> 8
sum(3, "5")   #=> 8
sum("3", 5)   #=> 8
sum(nil, nil) #=> 0
