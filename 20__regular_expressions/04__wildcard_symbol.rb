# Notes:
#   * `.` - wildcard symbol, means any single character
#   * `\.` - just a dot symbol

phrase = "The Ruby programming language is amazing and awe-inspiring."
phrase =~ /./       #=> 0
phrase.scan(/.am/)  #=> ["ram", " am"]
phrase.scan(/.ing/) #=> ["ming", "zing", "ring"]
phrase.scan(/a.e/)  #=> ["age", "awe"]
phrase.scan(/ng/)   #=> ["ng", "ng", "ng", "ng"]
phrase.scan(/.ng/)  #=> ["ing", "ang", "ing", "ing"]
phrase.scan(/./)    #=> ["T", "h", "e", " ", "R", "u", "b", "y", " ", "p", "r", "o", "g", "r", "a", "m", "m", "i",  "n", "g", " ", "l", "a", "n", "g", "u", "a", "g", "e", " ", "i", "s", " ", "a", "m", "a", "z", "i", "n", "g", " ", "a", "n", "d", " ", "a", "w", "e", "-", "i", "n", "s", "p", "i", "r", "i", "n", "g", "."]

"The Ruby version 2.3.3 is amazing".scan(/\d.\d.\d/) #=> ["2.3.3"]

voicemail = "I can be reached at 555-123-4567 or regexman@gmail.com"
voicemail.scan(/.e/)                  #=> ["be", "re", "he", "re", "ge"]
voicemail.scan(/.e./)                 #=> ["be ", "rea", "hed", "reg"]
voicemail.scan(/\d{3}.+\d{3}.+\d{4}/) #=> ["555-123-4567"] (3 digits, any number of any character, 3 digits, any number of any character, 4 digits)
voicemail.scan(/\./)                  #=> ["."]
