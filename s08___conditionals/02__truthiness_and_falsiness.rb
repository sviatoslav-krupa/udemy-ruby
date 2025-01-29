# Truthiness and Falsiness

# Falsey values: false, nil.
# Truthy values: everything else (whether good enough to be a boolean).

if false
  puts "That is true"
end # =>

if nil
  puts "That is true"
end # =>

if 5
  puts "That is true"
end # => That is true

if 0
  puts "That is true"
end # => That is true

if "qwe"
  puts "That is true"
end # => That is true (warning: string literal in condition)

if ""
  puts "That is true"
end # => That is true (warning: string literal in condition)

if []
  puts "That is true"
end # => That is true (warning: string literal in condition)

if {}
  puts "That is true"
end # => That is true (warning: string literal in condition)
