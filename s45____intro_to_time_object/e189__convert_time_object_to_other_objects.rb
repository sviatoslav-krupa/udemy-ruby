# Convert Time Object to Other Objects
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482558#overview) is the link to the video.

someday = Time.new(2000, 2, 15)

someday.to_s #=> "2000-02-15 00:00:00 +0200"

# .ctime - returns a canonical string representation of time
someday.ctime #=> "Tue Feb 15 00:00:00 2000"
someday.ctime.class #=> String

# .to_a - returns ten-element array of values for time:
# [sec, min, hour, day, month, year, wday, yday, isdst, zone]
someday.to_a #=> [0, 0, 0, 15, 2, 2000, 2, 46, false, "EET"]
someday.to_a.class #=> Array
