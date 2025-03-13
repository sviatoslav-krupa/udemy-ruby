# Notes:
#   * .strftime (String Format Time)
#   * The result is String
#   * %b - Abbreviated month name ("Jan")
#   * %B - Full month name ("January")
#   * %d - Day of the month (1..31)
#   * %j - Day of the year (1..366); so-called "Julian date"
#   * %m - Month as a number (1..12)
#   * %w - Day of the week as a number (0..6)
#   * %x - Preferred representation for date (no time)
#   * %y - Two-digit year (no century)
#   * %Y - Four-digit year

# Docs:
#   * https://ruby-doc.org/core-2.3.3/Time.html#method-i-strftime

someday = Time.new(2000, 2, 15)

someday.to_s                        #=> "2000-02-15 00:00:00 +0200"
someday.strftime("%B %d, %Y")       #=> "February 15, 2000"
someday.strftime("%d----%B----%j")  #=> "15----February----046"

# .ctime - returns a canonical string representation of time
someday.ctime       #=> "Tue Feb 15 00:00:00 2000"
someday.ctime.class #=> String

# .to_a - returns ten-element array of values for time: [sec, min, hour, day, month, year, wday, yday, isdst, zone]
someday.to_a        #=> [0, 0, 0, 15, 2, 2000, 2, 46, false, "EET"]
someday.to_a.class  #=> Array
