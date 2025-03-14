# Notes:
#   * .values_at returns always an array
#   * Can pass duplicate arguments
#   * Arguments have to be passed by comma (not in array)

channels = %w[CBS FOX NBC ESPN UPN]

channels.values_at(1)         #=> ["FOX"]
channels.values_at(1, 2)      #=> ["FOX", "NBC"]
channels.values_at(1, 2, 4)   #=> ["FOX", "NBC", "UPN"]
channels.values_at(3, 3, 4) #=>  ["ESPN", "ESPN", "UPN"]

# Edge cases:
channels.values_at([1, 2])          #=> no implicit conversion of Array into Integer (TypeError)
channels.values_at(-100, 2000, 40)  #=> [nil nil, nil]
