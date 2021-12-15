# Access Single Array Element with .fetch Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482122#overview) is the link to the video.

# .fetch throws an error or returns default value (second argument) if it passed

names = %w[Tom Cameron Bob]

p names[2] # => "Bob"
p names.fetch(2) # => "Bob"

p names[100] # => nil
p names.fetch(100) # => index 100 outside of array bounds: -3...3 (IndexError)
p names.fetch(100, "Default name") # => "Default name" (works like `p names[100] || "Default name"`)
