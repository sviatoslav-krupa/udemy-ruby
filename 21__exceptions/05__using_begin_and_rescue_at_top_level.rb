def sum(a, b)
  a + b
end

begin
  sum(3, "5")
rescue TypeError => e
  puts "One of the types is not valid"
rescue NoMethodError => e
  puts "Some method you're trying to invoke does not exist"
ensure
  puts "OK, wrapping things up. Have a nice day!"
end #=> nil
# OUTPUT:
#   One of the types is not valid
#   OK, wrapping things up. Have a nice day!
