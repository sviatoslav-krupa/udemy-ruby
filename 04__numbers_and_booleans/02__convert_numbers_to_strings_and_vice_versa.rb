# Notes:
#   * .to_i, .to_f, .to_s don't mutate (change) object, they just return value


# Convert Strings to Numbers
str = "5"
str       #=> "5"
str.class #=> String

num = str.to_i # converting String to Integer with .to_i method
num       #=> 5
num.class #=> Integer

num = str.to_f # converting String to Float with .to_f method
num       #=> 5.0
num.class #=> Float

"5.8".to_f #=> 5.8 (Float)
"5.8".to_i #=> 5 (Integer, just cutting digits after the comma)

# Edge cases:
"5.68qwe".to_i #=> 5 (cuts all symbols after digits)
"5.68qwe".to_f #=> 5.68
"qwe5.68".to_i #=> 0 (non-digit symbols go first, so Ruby can't convert it to numeric)
"qwe5.68".to_f #=> 0.0


# Convert Numbers to Strings
# Integer
integer = 10
integer       #=> 10
integer.class #=> Integer

integer_str = integer.to_s # converting Integer to String with .to_s method
integer_str       #=> "10"
integer_str.class #=> String

# Float
float = 5.6
float       #=> 5.6
float.class #=> Float

float_str = float.to_s # converting Float to String with .to_s method
float_str       #=> "5.6"
float_str.class #=> String


# Convert Integer to Float
integer = 10
integer       #=> 10
integer.class #=> Integer

float_from_integer = integer.to_f # converting Integer to Float with .to_f method
float_from_integer        #=> 10.0
float_from_integer.class  #=> Float

# Convert Float to Integer
float = 5.6
float       #=> 5.6
float.class #=> Float

integer_from_float = float.to_i # converting Float to Integer with .to_i method
integer_from_float        #=> 5 (cuts all digits after the comma)
integer_from_float.class  #=> Integer


# Edge cases:
"5" == "5".to_s                     #=> true
"5".object_id == "5".to_s.object_id #=> false (.to_s creates a new different object)

5 == 5.to_i                     #=> true
5.object_id == 5.to_i.object_id #=> true

5.0 == 5.0.to_f                     #=> true
5.0.object_id == 5.0.to_f.object_id #=> true
