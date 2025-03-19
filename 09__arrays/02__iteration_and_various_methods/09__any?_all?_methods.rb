# Notes:
#   * .any? - returns true if at least one item matches condition. Optimized to stop executing after finding the first matching
#   * .all? - returns true if all items match condition. Optimized to stop executing after finding the first non-matching

# .any?
[1, 3, 5, 7, 2].any? { |num| num.even? }  #=> true
[1, 3, 5, 7].any? { |num| num.even? }     #=> false

# .all?
[1, 3, 5, 7, 2].all? { |num| num.even? }  #=> false
[1, 3, 5, 7].all? { |num| num.odd? }      #=> true
