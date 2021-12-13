# CHALLENGE: FizzBuzz
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481746#overview) is the link to the video.

# Iterate from 1 to `number`.
# If the number is divisible by 3 - print 'Fizz'
# If the number is divisible by 5 - print 'Buzz'
# If the number is divisible by 3 and 5 - print 'FizzBuzz'

def fizzbuzz(number)
  i = 1

  while i <= number
    if i % 3 == 0 && i % 5 == 0
      puts "FizzBuzz - #{i}"
    elsif i % 3 == 0
      puts "Fizz - #{i}"
    elsif i % 5 == 0
      puts "Buzz - #{i}"
    end

    i += 1
  end
end

fizzbuzz(25)
=begin
Fizz - 3
Buzz - 5
Fizz - 6
Fizz - 9
Buzz - 10
Fizz - 12
FizzBuzz - 15
Fizz - 18
Buzz - 20
Fizz - 21
Fizz - 24
Buzz - 25
=end
