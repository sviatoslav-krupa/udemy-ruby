# The .gets method and the .chomp method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477586#overview) is the link to the video.

# .gets - (get String) collects input from a user, output value is always String
# .chomp - remove new line character at the end of the string

name = gets
# enter Sviat
p name # => "Sviat\n" ('\n' - Enter key, line break)
puts "Thank you, #{name}. See you later!"
=begin
  Thank you, Sviat
  . See you later!
=end

name = gets.chomp # method chaining: .gets returns String, call .chomp on returned String
# enter Sviat
p name # => "Sviat"
puts "Thank you, #{name}. See you later!"
=begin
  Thank you, Sviat. See you later!
=end



