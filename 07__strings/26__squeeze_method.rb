# Notes:
#   * .squeeze - removes characters that occurs more than once in a set ("yellow moon" - "yelow mon")
#   * .squeeze! - modifies original variable
#   * By default, .squeeze check all characters
#   * Only characters from parameter will be checked
#   * Takes each part of param separately
#   * Order doesn't matter
#   * Case sensitivity matters

# Docs:
#   * https://apidock.com/ruby/String/squeeze

sentence = "Thhhhhhe aardvark jummped   ovver the fence!"
sentence.squeeze                 #=> "The ardvark jumped over the fence!"
sentence.squeeze("a")   #=> "Thhe ardvark jummped   ovver the fence!"
sentence.squeeze(" h")  #=> "The aardvark jummped ovver the fence!" (As with .count, takes each part of param separately, order doesn't matter, case sensitivity matters)

def custom_squeeze(string, sub_string = nil)
  new_string = ""

  string.each_char do |char|
    next if new_string[-1] == char && (sub_string.nil? || sub_string.include?(char))
    new_string << char
  end

  new_string
end
custom_squeeze(sentence)                 #=> "The ardvark jumped over the fence!"
custom_squeeze(sentence, "a")   #=> "Thhe ardvark jummped   ovver the fence!"
custom_squeeze(sentence, " h")  #=> "The aardvark jummped ovver the fence!"
