# The .sort and .sort_by Methods on a Hash
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482498#overview) is the link to the video.

# .sort and .sort_by return multidimensional array in format [..., [:key, :value], [:key, :value], ...]

pokemon = {
  squirtle: "Water",
  balbasaur: "Grass",
  charizard: "Fire"
}

# .sort sorts by :key ASC
pokemon.sort #=> [[:balbasaur, "Grass"], [:charizard, "Fire"], [:squirtle, "Water"]]

# .sort_by - more flexible
# sort by keys
pokemon.sort_by { |key, value| key } #=> [[:balbasaur, "Grass"], [:charizard, "Fire"], [:squirtle, "Water"]]
# sort by values
pokemon.sort_by { |key, value| value } #=>  [[:charizard, "Fire"], [:balbasaur, "Grass"], [:squirtle, "Water"]]
