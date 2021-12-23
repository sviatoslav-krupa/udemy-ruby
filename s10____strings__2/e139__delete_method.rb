# The .delete Method on a String
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482398#overview) is the link to the video.

# .delete - removes all occurrences of substring passed in params

p "Hello, World!".delete("l") # => "Heo, Word!"

# Taking each part of param separately, order doesn't matter, case sensitivity matters
p "Hello, World!".delete("lo") # => "He, Wrd!"

def custom_delete(string, sub_string)
  new_string = ""
  string.each_char do |char|
    new_string << char unless sub_string.include?(char)
  end
  new_string
end
p custom_delete("Hello, World!" ,"l") # => "Heo, Word!"
p custom_delete("Hello, World!" ,"lo") # => "He, Wrd!"
