# Notes:
#   * Date object doesn't have associated time

require "date"

Date.new                                #=> #<Date: -4712-01-01 ((0j,0s,0n),+0s,2299161j)>
Date.new(1991)                    #=> #<Date: 1991-01-01 ((2448258j,0s,0n),+0s,2299161j)>
Date.new(1991, 4)           #=> #<Date: 1991-04-01 ((2448348j,0s,0n),+0s,2299161j)>
Date.new(1991, 4, 12) #=> #<Date: 1991-04-12 ((2448359j,0s,0n),+0s,2299161j)>

birthday = Date.new(1997, 6, 9)

birthday.class      #=> Date
birthday.year       #=> 1997
birthday.month      #=> 6
birthday.day        #=> 9
birthday.monday?    #=> true
birthday.tuesday?   #=> false
birthday.wednesday? #=> false
birthday.thursday?  #=> false
birthday.friday?    #=> false
birthday.saturday?  #=> false
birthday.sunday?    #=> false
birthday.yday       #=> 160 (the day starting for the beginning of the year)
birthday.mday       #=> 9 (the day starting for the beginning of the month)
birthday.wday       #=> 1 (the day starting for the beginning of the week, starting from Sunday as 0 day)

# Edge cases:
birthday.hour #=> private method 'hour' called for an instance of Date (NoMethodError)
birthday.min  #=> private method 'min' called for an instance of Date (NoMethodError)
birthday.sec  #=> private method 'sec' called for an instance of Date (NoMethodError)

# .dst? - returns true if time occurs during Daylight Saving Time in its time zone
birthday.dst? #=> private method 'sec' called for an instance of Date (NoMethodError)
