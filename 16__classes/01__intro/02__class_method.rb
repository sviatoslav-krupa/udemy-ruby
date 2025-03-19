5.class             #=> Integer
8.class             #=> Integer
5.class == 8.class  #=> true

0.5.class               #=> Float
3.9.class               #=> Float
0.5.class == 3.9.class  #=> true

5.class == 3.9.class #=> false

"Hello".class     #=> String
[1, 2, 3].class   #=> Array
{}.class          #=> Hash
true.class        #=> TrueClass
false.class       #=> FalseClass
nil.class         #=> NilClass
(0..9).class      #=> Range
//.class          #=> Regexp
Proc.new {}.class #=> Proc
lambda {}.class   #=> Proc
Time.new.class    #=> Time
