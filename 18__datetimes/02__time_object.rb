# Notes:
#   * Time object holds a date and a time
#   * Time class is available automatically (no require needed)
#   * DateTime class was the older version (deprecated) of this class
#   * `Time.new` - can specify additional arguments, more flexible
#   * `Time.now` - doesn't receive any arguments
#

# Docs:
#   * https://ruby-doc.org/core-2.3.3/Time.html

today = Time.new
today       #=> 2022-01-03 09:49:01.521343 +0200 (now, current date, time and time zone)
today.class #=> Time

another_today = Time.now
another_today       #=> 2022-01-03 09:51:48.061619 +0200
another_today.class #=> Time

Time.now(2015)                                                   #=> wrong number of arguments (given 1, expected 0) (ArgumentError)
Time.new                                                         #=> 2022-01-03 09:53:13.058111 +0200
Time.new(2015)                                              #=> 2015-01-01 00:00:00 +0200 (the start of the 2015 year)
Time.new(2015, 5)                                    #=> 2015-05-01 00:00:00 +0300 (the start of the 2015 year, May (5) month)
Time.new(2015, 5, 18)                           #=> 2015-05-18 00:00:00 +0300 (the start of the 2015 year, May (5) month, 18 day)
Time.new(2015, 5, 18, 23)                  #=> 2015-05-18 23:00:00 +0300
Time.new(2015, 5, 18, 23, 45)         #=> 2015-05-18 23:45:00 +0300
Time.new(2015, 5, 18, 23, 45, 05) #=> 2015-05-18 23:45:05 +0300

today.class      #=> Time
today.year       #=> 2022
today.month      #=> 1
today.day        #=> 3
today.monday?    #=> true
today.tuesday?   #=> false
today.wednesday? #=> false
today.thursday?  #=> false
today.friday?    #=> false
today.saturday?  #=> false
today.sunday?    #=> false
today.yday       #=> 3 (the day starting for the beginning of the year)
today.mday       #=> 3 (the day starting for the beginning of the month)
today.wday       #=> 1 (the day starting for the beginning of the week, starting from Sunday as 0 day)
today.hour       #=> 9
today.min        #=> 43
today.sec        #=> 1

# .dst? - returns true if time occurs during Daylight Saving Time in its time zone
today.dst? #=> false

# Edge cases:
Time.new(2100)            #=> 2100-01-01 00:00:00 +0200 (for future)
Time.new(-1000)           #=> -1000-01-01 00:00:00 +0300 (even with negative year)
Time.new(2022, 30) #=> argument out of range (ArgumentError)
