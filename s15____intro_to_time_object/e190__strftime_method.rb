# Convert Time Object to Formatted String
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482560#overview) is the link to the video.

# .strftime (String from Time)
# Documentation (https://ruby-doc.org/core-2.3.3/Time.html#method-i-strftime)
# The result is String

today = Time.new

today.strftime("%B %d, %Y") #=> "January 03, 2022"
today.strftime("%d----%B----%j") #=> "03----January----003"
