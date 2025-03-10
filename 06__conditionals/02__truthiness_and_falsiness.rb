# Notes:
#   * Falsey values: false, nil
#   * Truthy values: everything else (whether good enough to be a boolean)

if false
  puts "That is true"
end #=> nil
# OUTPUT: (outputs nothing)

if nil
  puts "That is true"
end #=> nil
# OUTPUT: (outputs nothing)

if 5
  puts "That is true"
end #=> nil
# OUTPUT:
#   That is true

if 0
  puts "That is true"
end # => nil
# OUTPUT:
#   That is true

if "qwe"
  puts "That is true"
end #=> nil (warning: string literal in condition)
# OUTPUT:
#   That is true

if ""
  puts "That is true"
end #=> nil (warning: string literal in condition)
# OUTPUT:
#   That is true

if []
  puts "That is true"
end #=> nil
# OUTPUT:
#   That is true

if {}
  puts "That is true"
end #=> nil
# OUTPUT:
#   That is true
