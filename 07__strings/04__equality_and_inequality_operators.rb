a = "Hello"
b = "hello"
c = "Hello"

# Equality operator
a == b        #=> false (case sensitivity)
a == "Hello " #=> false (the spaces matters)
a == c        #=> true
a == a        #=> true

# Inequality operator
a != b        #=> true (case sensitivity)
a != "Hello " #=> true (the spaces matters)
a != c        #=> false
a != a        #=> false

# Less than (<)
"Apple" < "Banana"  #=> true (alphabetical sorting, which letter alphabetically goes first - that letter has lower value)
"hello" < "help"    #=> true
"A" < "a"           #=> true (capital letters goes first)
"Z" < "a"           #=> true (capital letters goes first)

# Greater than (>)
"Apple" > "Banana"  #=> false (alphabetical sorting)
"hello" > "help"    #=> false
"Help" > "banana"   #=> false (capital letters goes first)
"Help" > "Banana"   #=> true (alphabetical sorting)
