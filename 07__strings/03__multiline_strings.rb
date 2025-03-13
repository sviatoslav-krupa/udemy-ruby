# Notes:
#   * In Ruby it's called "here document", "heredoc"

# Docs:
#   * https://ruby-doc.org/core-2.3.0/doc/syntax/literals_rdoc.html#label-Here+Documents

# MLS can be whatever you want, it is just an indicator that indicates a start of the string
# Everything inside is literal (tabs, spaces)
words = <<MLS # starts of a multiline string
  This will be a multiline string
  when it is output.

The tabs will also be preserved.
Just you watch.
Goodbye!
MLS

p words
# OUTPUT:
#   "  This will be a multiline string\n  when it is output.\n\nThe tabs will also be preserved.\nJust you watch.\nGoodbye!\n"

print words
# OUTPUT:
#     This will be a multiline string
#     when it is output.
#
#   The tabs will also be preserved.
#   Just you watch.
#   Goodbye!

puts words
# OUTPUT:
#     This will be a multiline string
#     when it is output.
#
#   The tabs will also be preserved.
#   Just you watch.
#   Goodbye!

# Edge cases
new_words = <<MLS add text here #=> syntax error found (SyntaxError)
  This will be a multiline string
  when it is output.
MLS (again some text but Ruby doesn't recognise it as a string ending)
MLS
