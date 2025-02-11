# Remove Array Items that Exist in Another Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482430#overview) is the link to the video.

# `-` - removes any items that also appear in other array (with duplicates)

# removes all 1, 2 and 3 from left array
[1, 1, 2, 2, 3, 3, 4, 5] - [1, 2, 4] #=> [3, 3, 5]
[1, 1, 2, 2, 3, 3, 4, 5].-([1, 2, 4]) #=> [3, 3, 5]

def custom_subtraction(arr1, arr2)
  new_arr = []
  arr1.each do |item|
    new_arr << item unless arr2.include?(item)
  end
  new_arr
end
custom_subtraction([1, 1, 2, 2, 3, 3, 4, 5], [1, 2, 4]) #=> [3, 3, 5]
