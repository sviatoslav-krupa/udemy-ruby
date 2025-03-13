# Notes:
#   * `d` - just letter "d"
#   * `\d` - any single digit
#   * `\d+` - one or more digits in a row
#   * `\D` - any non-digit
#   * `{x}` - exact x number of symbols
#   * `{x,}` - x or more number of symbols
#   * `{x,y}` - between x and y number of symbols
#   * .scan with block - what to do with each matching

voicemail = "I can be reached at 555-123-4567 or regexman@gmail.com"

voicemail.scan(/d/)   #=> ["d"]
voicemail.scan(/\d/)  #=> ["5", "5", "5", "1", "2", "3", "4", "5", "6", "7"]
voicemail.scan(/\d+/) #=> ["555", "123", "4567"]
voicemail.scan(/\d{3}/) #=> ["555", "123", "456"]
voicemail.scan(/\d{3,}/) #=> ["555", "123", "4567"]
voicemail.scan(/\d{1,3}/) #=> ["555", "123", "456", "7"]

"I can be reached at 5-12-4567 or regexman@gmail.com".scan(/\d+/) #=> ["5", "12", "4567"]

voicemail.scan(/\d+/) { |digit_match| p digit_match }
# OUTPUT:
#   "555"
#   "123"
#   "4567"
