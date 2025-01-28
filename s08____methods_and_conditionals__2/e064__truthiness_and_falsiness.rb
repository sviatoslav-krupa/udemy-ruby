# Truthiness and Falsiness
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481574#overview) is the link to the video.

# Falsey values: false, nil
# Truthy values: everything else

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
end

if {}
  puts "That is true"
end
