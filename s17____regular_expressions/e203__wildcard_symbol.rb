# The Wildcard Symbol
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482586#search) is the link to the video.

# `.` - wildcard symbol, means any single character

phrase = "The Ruby programming language is amazing and awe-inspiring."

phrase =~ /./ #=> 0
phrase.scan(/.am/) #=> ["ram", " am"]
phrase.scan(/.ing/) #=> ["ming", "zing", "ring"]
phrase.scan(/a.e/) #=> ["age", "awe"]
phrase.scan(/ng/) #=> ["ng", "ng", "ng", "ng"]
phrase.scan(/.ng/) #=> ["ing", "ang", "ing", "ing"]
"The Ruby version 2.3.3 is amazing".scan(/\d.\d.\d/) #=> ["2.3.3"]
phrase.scan(/./)
=begin
["T",
 "h",
 "e",
 " ",
 "R",
 "u",
 "b",
 "y",
 " ",
 "p",
 "r",
 "o",
 "g",
 "r",
 "a",
 "m",
 "m",
 "i",
 "n",
 "g",
 " ",
 "l",
 "a",
 "n",
 "g",
 "u",
 "a",
 "g",
 "e",
 " ",
 "i",
 "s",
 " ",
 "a",
 "m",
 "a",
 "z",
 "i",
 "n",
 "g",
 " ",
 "a",
 "n",
 "d",
 " ",
 "a",
 "w",
 "e",
 "-",
 "i",
 "n",
 "s",
 "p",
 "i",
 "r",
 "i",
 "n",
 "g",
 "."]
=end
