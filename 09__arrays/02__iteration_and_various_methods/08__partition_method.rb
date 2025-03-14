# Notes:
#   * .partition - .select and .reject together
#   * returns multidimensional array (with length 2): 1st - .select, 2nd - .reject

foods = ["Steak", "Vegetables", "Steak Burger", "Kale", "Tofu", "Tuna Steaks"]

good = foods.select { |food| food.include?("Steak") }
good #=> ["Steak", "Steak Burger", "Tuna Steaks"]

bad = foods.reject { |food| food.include?("Steak") }
bad#=> ["Vegetables", "Kale", "Tofu"]

#                                                                                  .select                              .reject
good, bad = foods.partition { |food| food.include?("Steak") } #=> [["Steak", "Steak Burger", "Tuna Steaks"], ["Vegetables", "Kale", "Tofu"]]
good  #=> ["Steak", "Steak Burger", "Tuna Steaks"]
bad   #=> ["Vegetables", "Kale", "Tofu"]
