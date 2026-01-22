# Notes:
#   * `|` (union) - combine multiple arrays into one and removes duplicates
#   * `&` (intersection) — returns a new array containing elements that common to the two arrays and removes duplicates

# `|`
[1, 2, 3] | [3, 4, 5]         #=> [1, 2, 3, 4, 5]
[1, 2, 3].|([3, 4, 5])        #=> [1, 2, 3, 4, 5]
([1, 2, 3] + [3, 4, 5]).uniq  #=> [1, 2, 3, 4, 5]

# Edge cases:
[1, 2, 3] | [3, 4, 5] | [4, 5, 6, 7]  #=> [1, 2, 3, 4, 5, 6, 7] (with multiple arrays)
[1, [2, 3]] | [[2, 3], 4, 5]          #=> [1, [2, 3], 4, 5]
[1, [2, 3]] | [[2, 3, 4], 5]          #=> [1, [2, 3], [2, 3, 4], 5]

# `&`
[1, 1, 3, 5] & [3, 2, 1]  #=> [1, 3]
[1, 1, 3, 5].&([3, 2, 1]) #=> [1, 3]
%w[a b b z] & %w[a b c]   #=> ['a', 'b']
%w[a b b z].&(%w[a b c])  #=> ['a', 'b']

# Edge cases:
[1, 1, 3, 5] & [10, 11, 12]               #=> []
[1, 1, 3, 5] & [3, 1, 6] & [1, 3, 10, 12] #=> [1, 3] (multiple arrays)

def custom_intersection(arr1, arr2)
  new_arr = []
  arr1.each do |item|
    new_arr << item if arr2.include?(item) && !new_arr.include?(item)
  end
  new_arr
end
custom_intersection([1, 1, 3, 5], [3, 2, 1])  #=> [1, 3]
custom_intersection(%w[a b b z], %w[a b c])   #=> ['a', 'b']

