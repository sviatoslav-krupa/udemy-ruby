# Notes:
#   * .size - returns the number of elements in a range (works only with Numeric)

# Docs:
#   * https://ruby-doc.org/core-3.0.0/Range.html#method-i-size

(143..769).size   #=> 627
(143..769).length #=> undefined method 'length' for an instance of Range (NoMethodError)
(143..769).count  #=> 627

(143...769).size    #=> 626
(143...769).length  #=> undefined method 'length' for an instance of Range (NoMethodError)
(143...769).count   #=> 626

(14.2..20.1).size   #=> can't iterate from Float (TypeError)
(14.2..20.1).length #=> undefined method 'length' for an instance of Range (NoMethodError)
(14.2..20.1).count  #=> can't iterate from Float (TypeError)

("a".."z").size   #=> nil
("a".."z").length #=> undefined method 'length' for an instance of Range (NoMethodError)
("a".."z").count  #=> 25
