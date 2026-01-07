# Less than (<)
1 < 8   #=> true
10 < 15 #=> true
12 < 5  #=> false
2 < 2.1 #=> true

# Less than or equal (<=)
1 <= 5  #=> true
1 <= 1  #=> true
10 <= 5 #=> false

# Greater than (>)
5 > 1   #=> true
3 > 0   #=> true
5 > 10  #=> false
6.1 > 6 #=> true

# Greater than or equal (>=)
10 >= 8   #=> true
10 >= 10  #=> true
3 >= 7    #=> false

# Edge cases:
6 > 6.0   #=> false
6 >= 6.0  #=> true

# Here Integer, Float and String include Comparable module, so we can make a comparison even if the result is an error
12 > "qwe"  #=> comparison of Integer with String failed (ArgumentError)
"qwe" > 12  #=> comparison of String with 12 failed (ArgumentError)
6.1 < nil   #=> comparison of Float with nil failed (ArgumentError)

# nil doesn't include Comparable module, so we can't compare nil with anything
nil < 6.1 #=> undefined method `<' for nil:NilClass (NoMethodError)
