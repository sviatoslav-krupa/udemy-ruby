# Comparison with the Equality (==) Operator
# Checks if 2 values are identical or equal
10 == 10          #=> true
10 == 20          #=> false
10 == "10"        #=> false
10 == 10.0        #=> true (even here are Integer and Float)
10 == 10.1        #=> false
true == "true"    #=> false
false == "false"  #=> false

a = 10
b = 5
c = 10

a == c #=> true
a == b #=> false
b == c #=> false

# Placement are irrelevant
a == c #=> true
c == a #=> true
a == b #=> false
b == a #=> false


# Comparison with the Inequality (!=) Operator
# Checks if 2 values are different (reverse to ==)
10 != 10                              #=> false
10 != 20                              #=> true
10 != "10"                            #=> true
10 != 10.0                            #=> false (even here are Integer and Float)
10 != 10.1                            #=> true
"Hello" != "Goodbye"                  #=> true
"Hello" != "Hello"                    #=> false
"Hello" != "hello"                    #=> true (case sensitivity matters)
"Hello".downcase != "hello".downcase  #=> false
