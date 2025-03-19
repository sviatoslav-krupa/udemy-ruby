# Notes:
#   * alias - another name for the same thing

class Gadget; end

# Different objects, not aliases
shiny = Gadget.new
flashy = Gadget.new

shiny   #=> #<Gadget:0x00007fa9018dc5a0>
flashy  #=> #<Gadget:0x00007fa9018dc528>

shiny.object_id   #=> 1020
flashy.object_id  #=> 1040

# :glossy is an alias for :shiny
glossy = shiny
glossy            #=> #<Gadget:0x00007fa9018dc5a0>
glossy.object_id  #=> 1020

# Checks the same location in memory
glossy == shiny   #=> true
glossy == flashy  #=> false
