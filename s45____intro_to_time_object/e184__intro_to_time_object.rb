# Intro to the Time Object
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482544#overview) is the link to the video.

# Documentation (https://ruby-doc.org/core-2.3.3/Time.html)

# Creation

today = Time.new # can specify additional arguments, more flexible
another_today = Time.now # doesn't receive any arguments

today #=> 2022-01-03 09:49:01.521343 +0200 (now, current date, time and time zone)
another_today #=> 2022-01-03 09:51:48.061619 +0200

today.class #=> Time
another_today.class #=> Time

Time.new #=> 2022-01-03 09:53:13.058111 +0200
Time.new(2015) #=> 2015-01-01 00:00:00 +0200 (the start of the 2015 year)
Time.new(2015, 5) #=> 2015-05-01 00:00:00 +0300 (the start of the 2015 year, May (5) month)
Time.new(2015, 5, 18) #=> 2015-05-18 00:00:00 +0300 (the start of the 2015 year, May (5) month, 18 day)
Time.new(2015, 5, 18, 23) #=> 2015-05-18 23:00:00 +0300
Time.new(2015, 5, 18, 23, 45) #=> 2015-05-18 23:45:00 +0300
Time.new(2015, 5, 18, 23, 45, 05) #=> 2015-05-18 23:45:05 +0300

Time.now(2015) #=> wrong number of arguments (given 1, expected 0) (ArgumentError)

# Edge cases
Time.new(2100) #=> 2100-01-01 00:00:00 +0200 (for future)
Time.new(-1000) #=> -1000-01-01 00:00:00 +0300 (even with negative year)
Time.new(2022, 30) #=> argument out of range (ArgumentError)
