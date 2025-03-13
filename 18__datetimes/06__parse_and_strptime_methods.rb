# Notes:
#   * .parse - uses default configuration
#   * .strptime (String Parse Time) - can configure, more flexible

Time.parse("2016-01-01")                #=> undefined method `parse' for Time:Class (NoMethodError)
Time.strptime("03-04-2000", "%m-%d-%Y") #=> undefined method `strptime' for Time:Class (NoMethodError)

require "time" # need to add additional functionality

Time.parse("2016-01-01")        #=> 2016-01-01 00:00:00 +0200
Time.parse("2016-01-01").class  #=> Time

Time.strptime("03-04-2000")                   #=> `strptime': wrong number of arguments (given 1, expected 2..3) (ArgumentError)
Time.strptime("03-04-2000", "%m-%d-%Y")       #=> 2000-03-04 00:00:00 +0200
Time.strptime("03-04-2000", "%m-%d-%Y").class #=> Time
