# The .parse and .strptime Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482562#overview) is the link to the video.

Time.parse("2016-01-01") #=> undefined method `parse' for Time:Class (NoMethodError)
Time.strptime("03-04-2000", "%m-%d-%Y") #=> undefined method `strptime' for Time:Class (NoMethodError)

require 'time' # need to add additional functionality

# .parse - uses default configuration
Time.parse("2016-01-01") #=> 2016-01-01 00:00:00 +0200
Time.parse("2016-01-01").class #=> Time

# .strptime (String parse Time) - can configure, more flexible
Time.strptime("03-04-2000") #=> `strptime': wrong number of arguments (given 1, expected 2..3) (ArgumentError)
Time.strptime("03-04-2000", "%m-%d-%Y") #=> 2000-03-04 00:00:00 +0200
Time.strptime("03-04-2000", "%m-%d-%Y").class #=> Time
