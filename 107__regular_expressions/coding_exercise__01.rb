# Define an calculate_grocery_total method that accepts a string.
# The string describes the goods I purchased at the supermarket
# along with their prices.
#
# The prices will alway be written in the following format:
#   $24.99
#   -> dollar sign
#   -> dollar amount
#   -> single dot
#   -> cent amount
#
# Calculate the total cost of my groceries. Return the value as a
# floating-point number.
#
# Examples:
# The => indicates the expected return value
#
# calculate_grocery_total("I purchased 4 apples for $9.99, 3 boxes of strawberries for $19.99, and one box of cereal for $5.49.")
#  => 35.47

def calculate_grocery_total(string)
  string
    .scan(/\d+.\d+/)
    .map(&:to_f)
    .reduce(&:+)
end
