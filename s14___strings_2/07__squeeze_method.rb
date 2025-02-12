# The .squeeze Method

# Documentation (https://apidock.com/ruby/String/squeeze)

# .squeeze - removes characters that occurs more than once in a set ("yellow moon" - "yelow mon")
# .squeeze! - modifies original variable

sentence = "Thhhhhhe aardvark jummped   ovver the fence!"

# By default .squeeze check all characters
p sentence.squeeze # => "The ardvark jumped over the fence!"

# Only characters from parameter will be checked
p sentence.squeeze("a") # => "Thhe ardvark jummped   ovver the fence!"
p sentence.squeeze(" h") # => "The aardvark jummped ovver the fence!" (As with .count, takes each part of param separately, order doesn't matter, case sensitivity matters)

def custom_squeeze(string, sub_string = nil)
  new_string = ""

  string.each_char do |char|
    next if new_string[-1] == char && (sub_string.nil? || sub_string.include?(char))
    new_string << char
  end

  new_string
end

custom_squeeze(sentence) # => "The ardvark jumped over the fence!"
custom_squeeze(sentence, "a") # => "Thhe ardvark jummped   ovver the fence!"
custom_squeeze(sentence, " h") # => "The aardvark jummped ovver the fence!"
