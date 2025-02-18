# METHODS:
# .each, .each_pair - Iterate over each key-value pair
# .each_key         - Iterate over each key
# .each_value       - Iterate over each value

capitals = {
  alabama: "Montgomery",
  alaska: "Juneau",
  arizona: "Phoenix",
  arkansas: "Little Rock"
}

capitals.each do |key, value| # Ruby technically keeps ordering from v1.9
  p "#{key} - #{value}"
end # => {alabama: "Montgomery", alaska: "Juneau", arizona: "Phoenix", arkansas: "Little Rock"}
=begin
  "alabama - Montgomery"
  "alaska - Juneau"
  "arizona - Phoenix"
  "arkansas - Little Rock"
=end

capitals.each_pair do |key, value|
  p "#{key} - #{value}"
end # => {alabama: "Montgomery", alaska: "Juneau", arizona: "Phoenix", arkansas: "Little Rock"}
=begin
  "alabama - Montgomery"
  "alaska - Juneau"
  "arizona - Phoenix"
  "arkansas - Little Rock"
=end

# Edge case
capitals.each do |item| # it iterates through each key-value pair and returns it in `[key, value]` format
  p item
end => {alabama: "Montgomery", alaska: "Juneau", arizona: "Phoenix", arkansas: "Little Rock"}
=begin
  [:alabama, "Montgomery"]
  [:alaska, "Juneau"]
  [:arizona, "Phoenix"]
  [:arkansas, "Little Rock"]
=end

salaries = {
  director: 100000,
  producer: 200000,
  ceo: 3000000
}

salaries.each_key { |key| p key } # => {director: 100000, producer: 200000, ceo: 3000000}
=begin
  :director
  :producer
  :ceo
=end

salaries.each_value { |value| p value } # => {director: 100000, producer: 200000, ceo: 3000000}
=begin
  100000
  200000
  3000000
=end

def keys_array(hash)
  result = []
  hash.each_key { |key| result << key }
  result
end

def values_array(hash)
  result = []
  hash.each_value { |value| result << value }
  result
end

keys_array(salaries) # => [:director, :producer, :ceo]
values_array(salaries) # => [100000, 200000, 3000000]

def keys_values_array(hash)
  keys = []
  values = []

  hash.each do |key, value|
    keys << key
    values << value
  end

  [keys, values]
end

keys_values_array(salaries) # => [[:director, :producer, :ceo], [100000, 200000, 3000000]]
