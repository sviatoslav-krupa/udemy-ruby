# The .any? and .all? Methods on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482406#overview) is the link to the video.

# .any? - at least one item matches condition
[1, 3, 5, 7, 2].any? { |num| num.even? } #=> true
[1, 3, 5, 7].any? { |num| num.even? } #=> false

# .all? - all items match condition
[1, 3, 5, 7, 2].all? { |num| num.even? } #=> false
[1, 3, 5, 7].all? { |num| num.odd? } #=> true
