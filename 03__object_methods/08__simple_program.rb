puts "Hi! What's your name?"
# OUTPUT:
#   Hi! What's your name?

name = gets.chomp

puts "Great! How old are you?"
# OUTPUT:
#   Great! How old are you?

age = gets.chomp.to_i # .to_i converts String to Integer if it can

puts "Cool, so your name is #{name} and you are #{age} years old!"
# OUTPUT:
#   Cool, so your name is Sviatoslav and you are 27 years old!
