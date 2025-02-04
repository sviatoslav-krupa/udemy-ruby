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
