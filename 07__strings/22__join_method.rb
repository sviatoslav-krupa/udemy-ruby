# Notes:
#   * .join - called on Array and returns String combined from Array elements. Can specify delimiter
#   * Opposite to .split

names = %w[Joe Moe Bob]

names.join        #=> "JoeMoeBob"
names.join("")    #=> "JoeMoeBob"
names.join(nil)   #=> "JoeMoeBob"
names.join(" ")   #=> "Joe Moe Bob"
names.join(" - ") #=> "Joe - Moe - Bob

%w[h e l l o].join #=> "hello"

# Edge cases:
names.join(" - ", 1)                                          #=> wrong number of arguments (given 2, expected 0..1) (ArgumentError)
["qwe", 1, 4, true, nil, "hello", 3.14, [], [1, 3], {}].join  #=> "qwe14truehello3.1413{}"

def custom_join(strings, delimiter = "")
  result = ""

  strings.each_with_index do |string, index|
    result << string
    result << delimiter if index != strings.length - 1
  end

  result
end
custom_join(names)        #=> "JoeMoeBob"
custom_join(names, " ")   #=> "Joe Moe Bob"
custom_join(names, " - ") #=> "Joe - Moe - Bob
