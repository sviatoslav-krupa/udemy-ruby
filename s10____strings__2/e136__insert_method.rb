# The .insert Method on a String
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482390#overview) is the link to the video.

# .insert - inserts character in an index position
# It mutates object

typo = "GeorgWashington"
typo.insert(5, "e ") # => "George Washington"
p typo # => "George Washington"

# Edge cases
typo.insert(100, "test") # => index 100 out of string (IndexError)
typo.insert(-100, "test") # => index -100 out of string (IndexError)
typo.insert(2, nil) # => no implicit conversion of nil into String (TypeError)
typo.insert(2, 23) # => no implicit conversion of Integer into String (TypeError)
typo.insert(2, true) # => no implicit conversion of true into String (TypeError)
