# The load Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482572#search) is the link to the video.

# load - access file, open it and execute right now, transfers control to loaded file, can use many times
# should have an extension of the file in the end of the file path

puts "This is the beginning!"
load "e196_e197__end.rb"
puts "Alright, that was successful."
load "./e196_e197__end.rb"

if 8 > 5
  load "e196_e197__end.rb"
end

if 8 < 5
  load "e196_e197__end.rb" # doesn't execute #load here
end

=begin
  This is the beginning!
  This is the end!
  Alright, that was successful.
  This is the end!
  This is the end!
=end
