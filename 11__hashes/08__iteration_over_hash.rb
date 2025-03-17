# Notes:
# .each, .each_pair - iterates over each key-value pair
# .each_key - iterates over each key
# .each_value - iterates over each value

capitals = {
  alabama: "Montgomery",
  alaska: "Juneau",
  arizona: "Phoenix",
  arkansas: "Little Rock"
}

capitals.each do |key, value| # Ruby technically keeps ordering from v1.9
  p "#{key} - #{value}"
end #=> {alabama: "Montgomery", alaska: "Juneau", arizona: "Phoenix", arkansas: "Little Rock"}
# OUTPUT:
#   "alabama - Montgomery"
#   "alaska - Juneau"
#   "arizona - Phoenix"
#   "arkansas - Little Rock"

capitals.each_pair do |key, value|
  p "#{key} - #{value}"
end #=> {alabama: "Montgomery", alaska: "Juneau", arizona: "Phoenix", arkansas: "Little Rock"}
# OUTPUT:
#   "alabama - Montgomery"
#   "alaska - Juneau"
#   "arizona - Phoenix"
#   "arkansas - Little Rock"

# Edge cases:
capitals.each do |item| # it iterates through each key-value pair and returns it in `[key, value]` format
  p item
end => {alabama: "Montgomery", alaska: "Juneau", arizona: "Phoenix", arkansas: "Little Rock"}
# OUTPUT:
#   [:alabama, "Montgomery"]
#   [:alaska, "Juneau"]
#   [:arizona, "Phoenix"]
#   [:arkansas, "Little Rock"]

salaries = {
  director: 100000,
  producer: 200000,
  ceo: 3000000
}
salaries.each_key { |key| p key } #=> {director: 100000, producer: 200000, ceo: 3000000}
# OUTPUT:
#   :director
#   :producer
#   :ceo

salaries.each_value { |value| p value } #=> {director: 100000, producer: 200000, ceo: 3000000}
# OUTPUT:
#   100000
#   200000
#   3000000

def keys_array(hash)
  result = []
  hash.each_key { |key| result << key }
  result
end
keys_array(salaries)    #=> [:director, :producer, :ceo]

def values_array(hash)
  result = []
  hash.each_value { |value| result << value }
  result
end
values_array(salaries)  #=> [100000, 200000, 3000000]

def keys_values_array(hash)
  keys = []
  values = []

  hash.each do |key, value|
    keys << key
    values << value
  end

  [keys, values]
end
keys_values_array(salaries) #=> [[:director, :producer, :ceo], [100000, 200000, 3000000]]
