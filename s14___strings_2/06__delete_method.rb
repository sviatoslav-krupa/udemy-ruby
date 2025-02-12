# The .delete Method on a String

# .delete - removes all occurrences of substring passed in params

p "Hello, World!".delete("l") # => "Heo, Word!"

# As with count, takes each part of param separately, order doesn't matter, case sensitivity matters
p "Hello, World!".delete("lo") # => "He, Wrd!"

def custom_delete(string, sub_string)
  new_string = ""

  string.each_char do |char|
    new_string << char unless sub_string.include?(char)
  end

  new_string
end

custom_delete("Hello, World!" ,"l") # => "Heo, Word!"
custom_delete("Hello, World!" ,"lo") # => "He, Wrd!"
