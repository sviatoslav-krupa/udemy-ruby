# Read from a Text File with Ruby
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482564#search) is the link to the video.

file = File.open('e192__novel.txt')
file.each do |line| # iterate through each line in file
  puts line
end
=begin
  Great American Novel
  by Sviat

  Chapter 1
  Once upon a time...
=end
