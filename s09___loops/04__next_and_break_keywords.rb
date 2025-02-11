# The next keyword - move to the next iteration of a loop.

money_sentence = "I love $ in the morning, $ in the afternoon, and $ at night"
current_index = 0

while current_index < money_sentence.length
  if money_sentence[current_index] != "$"
    current_index += 1
    next
  end

  puts "Found $ at index #{current_index}"

  current_index += 1
end
=begin
Found $ at index 7
Found $ at index 25
Found $ at index 49
=end


numbers = [1, 2, 3, 4, "hello", 5, 6, nil, 7, 8, []]
numbers.each do |number|
  unless number.is_a?(Numeric)
    next
  end

  puts "The square of #{number} is a #{number ** 2}"
end
=begin
The square of 1 is a 1
The square of 2 is a 4
The square of 3 is a 9
The square of 4 is a 16
The square of 5 is a 25
The square of 6 is a 36
The square of 7 is a 49
The square of 8 is a 64
=end


# The break keyword - terminates the loop completely.

money_sentence = "I love $ in the morning, $ in the afternoon, and $ at night"
current_index = 0
first_money_index = nil

while current_index < money_sentence.length
  if money_sentence[current_index] == "$"
    first_money_index = current_index
    break
  end

  current_index += 1
end

puts first_money_index # => 7


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
