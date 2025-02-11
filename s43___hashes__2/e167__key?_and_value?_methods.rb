# The .key? and .value? Methods on a Hash
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482500#overview) is the link to the video.

cars = {
  toyota: "camry",
  chevrolet: "aveo",
  ford: "F-150",
  kia: "soul"
}

# .key? - returns true if the given key is present in hash.
cars.key?(:toyota) #=> true
cars.key?("toyota") #=> false (String is not the same as Symbol)
cars.key?(:bmw) #=> false

cars.has_key?(:toyota) #=> true
cars.has_key?("toyota") #=> false (String is not the same as Symbol)
cars.has_key?(:bmw) #=> false

# .value? - returns true if the given value is present for some key in hash.
cars.value?("aveo") #=> true
cars.value?(:aveo) #=> false (Symbol is not the same as String)
cars.value?("civic") #=> false

cars.has_value?("aveo") #=> true
cars.has_value?(:aveo) #=> false (Symbol is not the same as String)
cars.has_value?("civic") #=> false
