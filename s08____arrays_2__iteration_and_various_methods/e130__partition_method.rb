# The .partition Method on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482370#overview) is the link to the video.

# .partition - .select and .reject together
# returns multidimensional array (with length 2): 1st - .select, 2nd - .reject

foods = ["Steak", "Vegetables", "Steak Burger", "Kale", "Tofu", "Tuna Steaks"]

good = foods.select { |food| food.include?("Steak") }
p good # => ["Steak", "Steak Burger", "Tuna Steaks"]

bad = foods.reject { |food| food.include?("Steak") }
p bad# => ["Vegetables", "Kale", "Tofu"]

#                                                                                  .select                              .reject
good, bad = foods.partition { |food| food.include?("Steak") } # => [["Steak", "Steak Burger", "Tuna Steaks"], ["Vegetables", "Kale", "Tofu"]]
p good # => ["Steak", "Steak Burger", "Tuna Steaks"]
p bad # => ["Vegetables", "Kale", "Tofu"]
