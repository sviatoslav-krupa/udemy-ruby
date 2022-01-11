# Object Aliases
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482608#search) is the link to the video.

# alias - another name for the same thing

class Gadget; end

shiny = Gadget.new
flashy = Gadget.new

shiny #=> #<Gadget:0x00007fa9018dc5a0>
flashy #=> #<Gadget:0x00007fa9018dc528>

shiny.object_id #=> 1020
flashy.object_id #=> 1040

# :glossy is an alias for :shiny
glossy = shiny
glossy #=> #<Gadget:0x00007fa9018dc5a0>
glossy.object_id #=> 1020

# Checks the same location in memory
glossy == shiny #=> true
glossy == flashy #=> false
