# The unless Keyword
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481736#overview) is the link to the video.

# unless = if not

password = "dominoes with a"

if password != "whiskers"
  puts "Not allowed"
end # => Not allowed

unless password == "whiskers"
  puts "Not allowed"
end # => Not allowed

if password.include?("a")
  puts "It includes the letter \"a\""
end # => It includes the letter "a"

unless password.include?("a")
  puts "It doesn't include the letter \"a\""
end # => (nothing)
