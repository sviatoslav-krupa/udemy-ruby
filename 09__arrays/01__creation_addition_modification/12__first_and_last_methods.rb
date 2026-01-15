# Docs:
#   * .first:
#     https://ruby-doc.org/core-2.7.0/Array.html#method-i-first
#   * .last:
#     https://ruby-doc.org/core-2.7.0/Array.html#method-i-last

arr = [1, 3, 5, 7, 9, 15, 21, 18, 6]

arr.first       #=> 1 (Integer)
arr.first(1)    #=> [1] (Array)
arr.first(3)    #=> [1, 3, 5] (Array)
arr.first(0)    #=> [] (Array)
arr.first(100)  #=> [1, 3, 5, 7, 9, 15, 21, 18, 6] (Array)

arr.last      #=> 6 (Integer)
arr.last(1)   #=> [6] (Array)
arr.last(2)   #=> [18, 6] (Array)
arr.last(0)   #=> [] (Array)
arr.last(100) #=> [1, 3, 5, 7, 9, 15, 21, 18, 6] (Array)

# Edge cases:
arr = []

arr.first     #=> nil
arr.first(2)  #=> []

arr.last    #=> nil
arr.last(2) #=> []

arr.first(-1) #=> negative array size (ArgumentError)
arr.last(-1)  #=> negative array size (ArgumentError)

array = [1, 2, 3, 4, 5, 6]

def custom_first(arr, num = 0)
  return arr[0] if num == 0
  arr[0, num]
end
custom_first(array)    #=> 1
custom_first(array, 1) #=> [1]
custom_first(array, 5) #=> [1, 2, 3, 4, 5]

def custom_last(arr, num = 0)
  return arr[-1] if num == 0
  arr[0 - num, num]
end
custom_last(array)    #=> 6
custom_last(array, 1) #=> [6]
custom_last(array, 5) #=> [2, 3, 4, 5, 6]
