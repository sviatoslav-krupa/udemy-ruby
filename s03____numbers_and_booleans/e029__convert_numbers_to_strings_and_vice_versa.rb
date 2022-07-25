# Convert Numbers to Strings and Vice Versa
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6477648#overview) is the link to the video.


# Convert Strings to Numbers
str = "5"
p str # => "5"
p str.class # => String

num = str.to_i # converting String to Integer with .to_i method
p num # => 5
p num.class # => Integer

num = str.to_f # converting String to Float with .to_f method
p num # => 5.0
p num.class # => Float

p "5.8".to_f # => 5.8 (Float)
p "5.8".to_i # => 5 (Integer, just cutting digits after the comma)

# Edge cases
p "5.68qwe".to_i # => 5 (cuts all symbols after digits)
p "5.68qwe".to_f # => 5.68
p "qwe5.68".to_i # => 0 (non-digit symbols go first, so Ruby can't convert it to numeric)
p "qwe5.68".to_f # => 0.0


# Convert Numbers to Strings
# Integer
integer = 10
p integer # => 10
p integer.class # => Integer

integer_str = integer.to_s # converting Integer to String with .to_s method
p integer_str # => "10"
p integer_str.class # => String

# Float
float = 5.6
p float # => 5.6
p float.class # => Float

float_str = float.to_s # converting Float to String with .to_s method
p float_str # => "5.6"
p float_str.class # => String


# Convert Integer to Float
integer = 10
p integer # => 10
p integer.class # => Integer

float_from_integer = integer.to_f # converting Integer to Float with .to_f method
p float_from_integer # => 10.0
p float_from_integer.class # => Float

# Convert Float to Integer
float = 5.6
p float # => 5.6
p float.class # => Float

integer_from_float = float.to_i # converting Float to Integer with .to_i method
p integer_from_float # => 5 (cuts all digits after the comma)
p integer_from_float.class # => Integer


# Notes
# * .to_i, .to_f, .to_s don't mutate (change) object, they just return value
# * converting to the same class returns the same object
