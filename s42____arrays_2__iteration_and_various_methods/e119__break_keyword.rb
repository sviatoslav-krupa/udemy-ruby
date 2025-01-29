# The break Keyword
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482344#overview) is the link to the video.

# break - to stop the loop

prizes = %w[Pyrite Pyrite Pyrite Pyrite Gold Pyrite Pyrite]
i = 0

while i < prizes.length
  current = prizes[i]

  if current == "Gold"
    puts "Yay! Found gold!"
    break
  else
    puts "#{current} is not gold!"
  end

  i +=1
end
=begin
Pyrite is not gold!
Pyrite is not gold!
Pyrite is not gold!
Pyrite is not gold!
Yay! Found gold!
=end

numbers = [1, 2, 3, 4, "hello", 5, 6, 7, 8]
numbers.each do |number|
  unless number.is_a?(Numeric)
    puts "That's not a valid number, I'm done with this nonsense!"
    break
  end

  puts "The square of #{number} is a #{number ** 2}"
end
=begin
The square of 1 is a 1
The square of 2 is a 4
The square of 3 is a 9
The square of 4 is a 16
That's not a valid number, I'm done with this nonsense!
=end
