# Instance Methods on a Time Object
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482546#overview) is the link to the video.

today = Time.now
today #=> 2022-01-03 09:58:58.906859 +0200

today.year #=> 2022
today.month #=> 1 (first month, starting from 1)
today.day #=> 3
today.hour #=> 9
today.min #=> 58
today.sec #=> 58
today.yday #=> 3 (the day starting for the beginning of the year)
today.mday #=> 3 (the day starting for the beginning of the month)
today.wday #=> 1 (the day starting for the beginning of the week, starting from Sunday as 0 day)
