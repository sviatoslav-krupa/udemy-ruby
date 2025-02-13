# Predicate Methods on Time Objects
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482552#overview) is the link to the video.

birthday = Time.new(1997, 6, 9)
birthday #=> 1997-06-09 00:00:00 +0300

birthday.monday? #=> true
birthday.tuesday? #=> false
birthday.wednesday? #=> false
birthday.thursday? #=> false
birthday.friday? #=> false
birthday.saturday? #=> false
birthday.sunday? #=> false

# .dst? - returns true if time occurs during Daylight Saving Time in its time zone
birthday.dst? #=> true
