# The .key? and .value? Methods on a Hash

cars = {
  toyota: "camry",
  chevrolet: "aveo",
  ford: "F-150",
  kia: "soul"
}

# .include?, .key?, .has_key? - returns true if the given key is present in hash.
cars.include?(:toyota) #=> true
cars.include?("toyota") #=> false (String is not the same as Symbol)
cars.include?(:bmw) #=> false

cars.key?(:toyota) #=> true
cars.key?("toyota") #=> false (String is not the same as Symbol)
cars.key?(:bmw) #=> false

cars.has_key?(:toyota) #=> true
cars.has_key?("toyota") #=> false (String is not the same as Symbol)
cars.has_key?(:bmw) #=> false

# .value? , .has_value? - returns true if the given value is present for some key in hash.
cars.value?("aveo") #=> true
cars.value?(:aveo) #=> false (Symbol is not the same as String)
cars.value?("civic") #=> false

cars.has_value?("aveo") #=> true
cars.has_value?(:aveo) #=> false (Symbol is not the same as String)
cars.has_value?("civic") #=> false
