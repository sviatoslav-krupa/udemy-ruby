# Return Values I
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481566#overview) is the link to the video.

# Every method returns a final value

def add_two_numbers(num1, num2)
  puts "OK, I'm solving your math problem!"

  # with :return keyword - explicit return (returns evaluation near :return, method finishes it's work right after return)
  # without :return keyword - implicit return (last, final evaluation returns)
  num1 + num2
end

p add_two_numbers(3, 5)
=begin
OK, I'm solving your math problem!
8
 => 8
=end

p add_two_numbers(8, 4)
=begin
OK, I'm solving your math problem!
12
 => 12
=end
