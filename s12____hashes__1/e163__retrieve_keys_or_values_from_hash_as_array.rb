# Retrieve Keys or Values from Hash as an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482492#overview) is the link to the video.

shopping_list = {
  bananas: 5,
  oranges: 10,
  carrots: 3,
  crackers: 15
}

shopping_list.keys #=> [:bananas, :oranges, :carrots, :crackers]
shopping_list.values #=> [5, 10, 3, 15]
