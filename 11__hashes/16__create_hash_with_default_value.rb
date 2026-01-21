# Literal syntax
fruit_prices = { banana: 1.05 }
fruit_prices[:banana] #=> 1.05
fruit_prices[:orange] #=> nil

fruit_prices = Hash.new("Not found") # parameter is a default value
fruit_prices[:banana] = 1.05
fruit_prices[:banana] #=> 1.05
fruit_prices[:orange] #=> "Not found"

# .default
# Docs:
#   * https://ruby-doc.org/core-2.3.3/Hash.html#method-i-default
fruit_prices.default = "Whoops! That doesn't exist here!"
fruit_prices.default  #=> "Whoops! That doesn't exist here!"
fruit_prices[:banana] #=> 1.05
fruit_prices[:orange] #=> "Whoops! That doesn't exist here!"

# Edge cases:
test_hash = Hash.new("Not found")
test_hash.default #=> "Not found"
test_hash[:test]  #=> "Not found"

test_hash.default = "404"
test_hash.default #=> "404"
test_hash[:test]  #=> "404"

# Reference problem with Hash.new

first_team_members = Hash.new([]) # default value is the same object for all non-existing keys

first_team_members #=> {}
first_team_members["Buccaneers"] #=> [] (hash isn't modified yet)

first_team_members["Buccaneers"] << "Tom Brady"

first_team_members #=> {} (hash still isn't modified yet, we just modified the default value)
first_team_members["Buccaneers"] #=> ["Tom Brady"]
first_team_members["Patriots"]   #=> ["Tom Brady"]

# Run the block each time we access a non-existing key and return block evaluation value as a default one
second_team_members = Hash.new do |hash, key|
  # Here we can just return `[]` so all non-existing keys will have `[]` value (each time different object)
  # But this approach will not modify an initial hash
  hash[key] = []
end
# The easier approach: `second_team_members = Hash.new { [] }` (just return new empty array for each non-existing key and don't store it in the hash)

second_team_members["Buccaneers"] #=> []
second_team_members               #=> {"Buccaneers" => []} (modify the hash in the block)

second_team_members["Buccaneers"] << "Tom Brady"
second_team_members["Buccaneers"] #=> ["Tom Brady"]
second_team_members               #=> {"Buccaneers" => ["Tom Brady"]}

second_team_members["Patriots"] #=> []
second_team_members             #=> {"Buccaneers" => ["Tom Brady"], "Patriots" => []}
