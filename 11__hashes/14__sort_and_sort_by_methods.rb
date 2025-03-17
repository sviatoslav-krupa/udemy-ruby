# Notes:
#   * .sort and .sort_by return multidimensional array in format [..., [:key, :value], [:key, :value], ...]
#   * .sort sorts by :key ASC
#   * .sort_by - more flexible

pokemon = {
  squirtle: "Water",
  balbasaur: "Grass",
  charizard: "Fire"
}
pokemon.sort #=> [[:balbasaur, "Grass"], [:charizard, "Fire"], [:squirtle, "Water"]]

# sort by keys
pokemon.sort_by { |key, value| key } #=> [[:balbasaur, "Grass"], [:charizard, "Fire"], [:squirtle, "Water"]]

# sort by values
pokemon.sort_by { |key, value| value } #=>  [[:charizard, "Fire"], [:balbasaur, "Grass"], [:squirtle, "Water"]]
