# The .include? Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482578#search) is the link to the video.

# .include? - checks if a string contains a substring

phrase = "The Ruby programming language is amazing!"

phrase.include?("Ruby") #=> true
phrase.include?("ruby") #=> false (case sensitive)
phrase.include?("test") #=> false

def custom_include?(string, substring)
  i = 0

  while i < string.length
    return true if string[i, substring.length] == substring
    i += 1
  end

  false
end
custom_include?(phrase, "Ruby") #=> true
custom_include?(phrase, "ruby") #=> false
custom_include?(phrase, "test") #=> false
