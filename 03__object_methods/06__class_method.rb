# Notes:
#   Class - a blueprint (template/schematic) for an object
#   Object - an "instance" of the class
#   Instantiation - a process of creating objects from classes
#   .class available for ALL objects and returns the class of an object

"hello".class       #=> String
"Ruby is fun".class #=> String
"123$".class        #=> String
"".class            #=> String

5.class           #=> Integer
-23.class         #=> Integer
100.class         #=> Integer
999_999_999.class #=> Integer

3.14.class    #=> Float
0.23.class    #=> Float
-10.99.class  #=> Float
