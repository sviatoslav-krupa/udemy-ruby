# Convert Symbols to Strings and Vice Versa
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482480#overview) is the link to the video.

:age.class #=> Symbol
:age.to_s #=> "age"
:age.to_s.class #=> String

"age".class #=> String
"age".to_sym #=> :age
"age".to_sym.class #=> Symbol

# Edge case (generally avoided)
"School bus".to_sym #=> :"School bus"
"School bus".to_sym.class #=> Symbol
