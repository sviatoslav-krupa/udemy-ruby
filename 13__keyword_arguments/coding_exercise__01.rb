# Define a Restaurant class below.
#
# The initialize method should accept 6 keyword arguments
#   * name (required)
#   * address (required)
#   * cuisine (required)
#   * head_chef (optional: default to empty string)
#   * rating (optional; default to 3)
#   * menu (optional; default to empty hash)
#
# Assign each keyword argument to an instance variable with the same name
# Define getter methods for all 6 instance variables

class Restaurant
  attr_reader :name, :address, :cuisine, :head_chef, :rating, :menu

  def initialize(name:, address:, cuisine:, head_chef: "", rating: 3, menu: {})
    @name = name
    @address = address
    @cuisine = cuisine
    @head_chef = head_chef
    @rating = rating
    @menu = menu
  end
end

first_restaurant = Restaurant.new(
  head_chef: "Guy Fieri",
  rating: 5,
  menu: { wings: 14.99 },
  name: "La Casa",
  address: "123 Flavortown Street, NJ",
  cuisine: "Patriotic American"
)
first_restaurant.name       #=> "La Casa"
first_restaurant.address    #=> "123 Flavortown Street, NJ"
first_restaurant.cuisine    #=> "Patriotic American"
first_restaurant.head_chef  #=> "Guy Fieri"
first_restaurant.rating     #=> 5
first_restaurant.menu       #=> {wings: 14.99}

second_restaurant = Restaurant.new(
  name: "Hell's Kitchen",
  address: "345 Las Vegas Boulevard, NV",
  cuisine: "British"
)
second_restaurant.head_chef #=> ""
second_restaurant.rating    #=> 3
second_restaurant.menu      #=> {}
