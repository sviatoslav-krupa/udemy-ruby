# Import Modules into the Current File
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482630#search) is the link to the video.

require_relative 'e224__modules_with_identical_methods' # files with modules

# Modules are available after requiring
p Square.area(5) #=> 25
p Rectangle.area(3, 6) #=> 18
p Circle.area(9) #=> 254.46878999999998
