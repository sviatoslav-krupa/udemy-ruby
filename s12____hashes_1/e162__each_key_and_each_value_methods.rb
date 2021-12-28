# The .each_key and .each_value Methods
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482490#overview) is the link to the video.

salaries = {
  director: 100000,
  producer: 200000,
  ceo: 3000000
}

salaries.each_key { |key| p key }
=begin
  :director
  :producer
  :ceo
=end

salaries.each_value { |value| p value }
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

keys_array(salaries) #=> [:director, :producer, :ceo]
values_array(salaries) #=> [100000, 200000, 3000000]

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
