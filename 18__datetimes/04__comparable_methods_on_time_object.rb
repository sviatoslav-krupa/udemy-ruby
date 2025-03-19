# Notes:
#   * Compares the count of seconds in each time

birthday = Time.new(2022, 6, 9)           #=> 2022-06-09 00:00:00 +0300
summer = Time.new(2022, 6, 1)             #=> 2022-06-01 00:00:00 +0300
winter = Time.new(2022, 12, 1)            #=> 2022-12-01 00:00:00 +0200
independence_day = Time.new(2022, 8, 24)  #=> 2022-08-24 00:00:00 +0300

# Is birthday faster than summer?
# Is count of seconds in `birthday` is less than count of seconds in `summer`?
# `birthday` has more seconds than `summer` because it's later
birthday < summer #=> false

# Is `independence_day` faster than `winter`?
independence_day < winter #=> true

# .between? - checks if date is between a range
independence_day.between?(summer, winter)   #=> true
birthday.between?(independence_day, winter) #=> false
