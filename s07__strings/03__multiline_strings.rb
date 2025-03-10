# Multiline Strings

# In Ruby it's called "here document", "heredoc"
# (https://ruby-doc.org/core-2.3.0/doc/syntax/literals_rdoc.html#label-Here+Documents)

# MLS can be whatever you want, it is just an indicator that indicates a start of the string
# Everything inside is literal (tabs, spaces)
words = <<MLS # starts of a multiline string
  This will be a multiline string
  when it is OUTPUT:.

The tabs will also be preserved.
Just you watch.
Goodbye!
MLS

p words
# => "  This will be a multiline string\n  when it is OUTPUT:.\n\nThe tabs will also be preserved.\nJust you watch.\nGoodbye!\n"

print words
=begin
  This will be a multiline string
  when it is OUTPUT:.

The tabs will also be preserved.
Just you watch.
Goodbye!
=end

puts words
=begin
  This will be a multiline string
  when it is OUTPUT:.

The tabs will also be preserved.
Just you watch.
Goodbye!
=end

# Edge cases
new_words = <<MLS add text here # => syntax error found (SyntaxError)
  This will be a multiline string
  when it is OUTPUT:.
MLS (again some text but Ruby doesn't recognise it as a string ending)
MLS
