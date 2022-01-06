# The .scan Method II
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482584#search) is the link to the video.

voicemail = "I can be reached at 555-123-4567 or regexman@gmail.com"

# `d` - just letter "d"
voicemail.scan(/d/) #=> ["d"]

# `\d` - any single digit
voicemail.scan(/\d/) #=> ["5", "5", "5", "1", "2", "3", "4", "5", "6", "7"]

# `\d+` - one or more digits in a row
voicemail.scan(/\d+/) #=> ["555", "123", "4567"]
"I can be reached at 5-12-4567 or regexman@gmail.com".scan(/\d+/) #=> ["5", "12", "4567"]

# .scan with block - what to do with each matching
voicemail.scan(/\d+/) { |digit_match| p digit_match }
=begin
  "555"
  "123"
  "4567"
=end
