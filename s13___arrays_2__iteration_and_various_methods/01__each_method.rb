# The .each Method on an Array

# .each - iterate over every single array element in order.
# Returns an array itself.

candies = ["Sour Patch kids", "Milky Way", "Airheads"]
candies.each do |candy|
  puts "I love eating #{candy}"
  puts "It tastes so good!"
  puts
end # => ["Sour Patch kids", "Milky Way", "Airheads"]
=begin
I love eating Sour Patch kids
It tastes so good!

I love eating Milky Way
It tastes so good!

I love eating Airheads
It tastes so good!


=end

names = %w[bo moe joe]
names.each { |name| puts name.capitalize } # => ["bo", "moe", "joe"]
=begin
Bo
Moe
Joe
=end

numbers = [1, 2, 3, 4, 5]
numbers.each do |number|
  square = number ** 2
  puts "The square of #{number} is #{square}"
end # => [1, 2, 3, 4, 5]
=begin
The square of 1 is 1
The square of 2 is 4
The square of 3 is 9
The square of 4 is 16
The square of 5 is 25
=end

# Edge cases
list = [3, 5, 7]
num = 10

list.each { |num| p num } # shadowing :num on line 48
# 3
# 5
# 7
p num # => 10 (from line 48)

numbers = 1..5
numbers.each do |number|
  puts number
end # => 1..5
=begin
1
2
3
4
5
=end

def print_odds_and_evens(array)
  odds = []
  evens = []

  array.each do |number|
    if number.odd?
      odds << number
    else
      evens << number
    end
  end

  p odds
  p evens
end

fives = [5, 10, 15, 20, 25, 30, 35, 40]

print_odds_and_evens(fives)
=begin
[5, 15, 25, 35]
[10, 20, 30, 40]
=end
