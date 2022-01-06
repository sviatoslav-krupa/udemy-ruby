# The .start_with? and .end_with? Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482576#search) is the link to the video.

phrase = "The Ruby programming language is amazing!"

# .start_with? - checks if substring is at the beginning of a string
phrase.start_with?("The") #=> true
phrase.start_with?("The ") #=> true
phrase.start_with?("the") #=> false (case sensitive)

# .end_with? - checks if substring is at the end of a string
phrase.end_with?("ing!") #=> true
phrase.end_with?("ing") #=> false
phrase.end_with?("Ing!") #=> false (case sensitive)

def custom_start_with?(string, substring)
  string_beginning = string[0, substring.length]
  string_beginning == substring
end
custom_start_with?(phrase, "The") #=> true
custom_start_with?(phrase, "The ") #=> true
custom_start_with?(phrase, "the") #=> false

def custom_end_with?(string, substring)
  string_end = string[-substring.length, substring.length]
  string_end == substring
end
custom_end_with?(phrase, "ing!") #=> true
custom_end_with?(phrase, "ing") #=> false
custom_end_with?(phrase, "Ing!") #=> false
