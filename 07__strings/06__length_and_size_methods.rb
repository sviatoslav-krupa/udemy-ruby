# Notes:
#   * .length and .size are identical

# Docs:
#   * .length - https://ruby-doc.org/core-2.5.0/String.html#method-i-length
#   * .size - https://ruby-doc.org/core-2.5.0/String.html#method-i-size

a = "Hello, World!"
b = "Hi, my name is Sviat!"
c = " "
d = ""

a.length  #=> 13
a.size    #=> 13

b.length  #=> 21
b.size    #=> 21

c.length  #=> 1
c.size    #=> 1

d.length  #=> 0
d.size    #=> 0

a.length.class      #=> Integer
a.length.next       #=> 14
a.length.odd?       #=> true
a.length.odd?.class #=> TrueClass
