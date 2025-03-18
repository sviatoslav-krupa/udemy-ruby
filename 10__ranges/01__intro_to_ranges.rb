# Notes:
#   * Range (interval) - a set of values with a beginning and an end
#   * s..e include the end value
#   * s...e exclude the end value

# Docs:
#   * https://ruby-doc.org/core-2.3.3/Range.html

nums = 1..5
nums        #=> 1..5
nums.class  #=> Range

# .first
nums.first    #=> 1 (Integer)
nums.first(3) #=> [1, 2, 3] (Array)

# .last
nums.last       #=> 5 (Integer)
nums.last(2)    #=> [4, 5] (Array)
(1...5).last    #=> 5 (even if 5 is excluded)
(1...5).last(1) #=> [4] (Array)
(1...5).last(3) #=> [2, 3, 4] (without excluded value if argument is used)

# Edge cases:
1..5.first        #=> undefined method `first' for 5:Integer (NoMethodError)
(1..5).first      #=> 1
(1..5).first(100) #=> [1, 2, 3, 4, 5]

1.2..9.6            #=> 1.2...9.6
(1.2..9.6).first    #=> 1.2
(1.2..9.6).first(1) #=> can't iterate from Float (TypeError)
(1.2..9.6).last     #=> 9.6
(1.2..9.6).last(1)  #=> can't iterate from Float (TypeError)

(1..9.6).first(100) #=> [1, 2, 3, 4, 5, 6, 7, 8, 9]

(true..true).class    #=> Range
(true..true).first    #=> true
(true..true).last     #=> true
(true..true).first(1) #=> can't iterate from TrueClass (TypeError)
(true..true).last(1)  #=> can't iterate from TrueClass (TypeError)

true..true    #=> true..true
true..false   #=> bad value for range (ArgumentError)
false..true   #=> bad value for range (ArgumentError)
false..false  #=> false..false

(false..false).class    #=> Range
(false..false).first    #=> false
(false..false).last     #=> false
(false..false).first(1) #=> can't iterate from FalseClass (TypeError)
(false..false).last(1)  #=> can't iterate from FalseClass (TypeError)
