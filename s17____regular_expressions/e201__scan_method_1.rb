# The .scan Method I
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482582#search) is the link to the video.

# .scan - called on String, argument is Regexp
# finds all occurrences (NOT index positions, returns matched elements itself)

voicemail = "I can be reached at 555-123-4567 or regexman@gmail.com"

voicemail.scan(/e/) #=> ["e", "e", "e", "e", "e"]
voicemail.scan(/re/) #=> ["re", "re"]
voicemail.scan(/Re/) #=> [] (case sensitive)
voicemail.scan(/test/) #=> []

voicemail.scan(/re/) #=> ["re", "re"] (specific sequence of symbols)
voicemail.scan(/[re]/) #=> ["e", "r", "e", "e", "r", "r", "e", "e"] (`[]` any character in any sequence)
voicemail.scan(/[xg]/) #=> ["g", "x", "g"]
voicemail.scan(/[test]/) #=> ["e", "e", "e", "t", "e", "e"]
voicemail.scan(/[Rre]/) #=> ["e", "r", "e", "e", "r", "r", "e", "e"]
voicemail.scan(/[Rr]e/) #=> ["re", "re"] (finds all "re" and "Re")
