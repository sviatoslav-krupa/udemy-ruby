# Notes:
#   * .split - returns an array from string divided by delimiter. Default param is space (` `)
#   * Delimiter is not included in result arrays

# Docs:
#   * https://ruby-doc.org/3.2.2/String.html#method-i-split

sentence = "Hi, my name is Sviat. There are spaces here!"

sentence.split                #=> ["Hi,", "my", "name", "is", "Sviat.", "There", "are", "spaces", "here!"]
sentence.split(" ")   #=> ["Hi,", "my", "name", "is", "Sviat.", "There", "are", "spaces", "here!"]
sentence.split(".")   #=> ["Hi, my name is Sviat", " There are spaces here!"]
sentence.split("m")   #=> ["Hi, ", "y na", "e is Sviat. There are spaces here!"]
sentence.split(" i")  #=> ["Hi, my name", "s Sviat. There are spaces here!"]

# To get all characters separately (just pass an empty string)
sentence.split("") #=> ["H", "i", ",", " ", "m", "y", " ", "n", "a", "m", "e", " ", "i", "s", " ", "S", "v", "i", "a", "t", ".", " ", "T", "h", "e", "r", "e", " ", "a", "r", "e", " ", "s", "p", "a", "c", "e", "s", " ", "h", "e", "r", "e", "!"]

# Edge cases:
sentence.split(nil) #=> ["Hi,", "my", "name", "is", "Sviat.", "There", "are", "spaces", "here!"] (the same as without parameter)
sentence.split(3)   #=> wrong argument type Integer (expected Regexp) (TypeError)

def custom_split(text, delimiter)
  result = []
  substring = ""

  text.each_char do |character|
    if character != delimiter
      substring << character
    else
      result << substring if substring.length > 0
      substring = ""
    end
  end

  result << substring if substring.length > 0

  result
end
custom_split("Hi, my name is Boris", " ") #=> ["Hi,", "my", "name", "is", "Boris"]
custom_split("ravioli is delicious", "i") #=> ["rav", "ol", " ", "s del", "c", "ous"]
custom_split("Zebra", "j")                #=> ["Zebra"]
custom_split(" hello", " ")               #=> ["hello"]
