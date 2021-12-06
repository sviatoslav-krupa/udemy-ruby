# Multiline Strings
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481474#overview) is the link to the video.

# In ruby it's called "here document", "heredoc"
# (https://ruby-doc.org/core-2.3.0/doc/syntax/literals_rdoc.html#label-Here+Documents)

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
# => "  This will be a multiline string\n  when it is output.\n\nThe tabs will also be preserved.\nJust you watch.\nGoodbye!\n"

print words
=begin
  This will be a multiline string
  when it is output.

The tabs will also be preserved.
Just you watch.
Goodbye!
=end

puts words
=begin
  This will be a multiline string
  when it is output.

The tabs will also be preserved.
Just you watch.
Goodbye!
=end
