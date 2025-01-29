# The .each_with_index Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482332#overview) is the link to the video.

colors = %w[red blue yellow orange]

colors.each_with_index do |color, index| # start counting from 0, :index always is a second
  puts "#{index}: Color #{color}"
end # => ["red", "blue", "yellow", "orange"]
=begin
0: Color red
1: Color blue
2: Color yellow
3: Color orange
=end
