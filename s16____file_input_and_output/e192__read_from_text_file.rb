# Read from a Text File with Ruby
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482564#search) is the link to the video.

array_of_lines_in_txt_file = File.open('novel.txt')
array_of_lines_in_txt_file.each do |line|
  puts line
end
=begin
  Great American Novel
  by Sviat

  Chapter 1
  Once upon a time...
=end
