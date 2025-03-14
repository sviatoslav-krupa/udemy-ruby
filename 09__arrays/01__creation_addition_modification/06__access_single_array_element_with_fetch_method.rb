# Notes:
#   * .fetch throws an error or returns default value (second argument) if it passed

names = %w[Tom Cameron Bob]

names[2]        #=> "Bob"
names.fetch(2)  #=> "Bob"

# Edge cases:
names[100]                        #=> nil
names.fetch(100)                  #=> index 100 outside of array bounds: -3...3 (IndexError)
names.fetch(100, "Default name")  #=> "Default name" (works like `names[100] || "Default name"`)
