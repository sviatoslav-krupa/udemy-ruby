# Notes:
#   * .include? => true | false - check if a substring exists in a string

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

# Edge cases:
name = "Snow White 123"
name.include?(123)    #=> no implicit conversion of Integer into String (TypeError)
name.include?('123')  #=> true
name.include?('hW')   #=> false (check ordering of characters)
