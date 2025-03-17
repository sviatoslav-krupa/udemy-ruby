# Notes:
#   * Symbol - lightweight String. It doesn't include as many methods as String, so it uses less memory
#   * .methods - list of all available methods on an abject

:name                 #=> :name
:name.class           #=> Symbol
:name.methods.length  #=> 90

"name"                #=> "name"
"name".class          #=> String
"name".methods.length #=> 195

str = "test"
dup_str = "test"
str.object_id == dup_str.object_id #=> false

sym = :test
dup_sym = :test
sym.object_id == dup_sym.object_id #=> true (no copies for Symbol, just one object in memory)

person = {
  :name => "Sviat",
  :age => 24,
  :handsome => true,
  :languages => %w[Ruby JavaScript]
}

# Shorthand syntax from Ruby 1.9 for hash with symbols as keys
person = {
  name: "Sviat",
  age: 24,
  handsome: true,
  languages:  %w[Ruby JavaScript]
}
person[:name] #=> "Sviat"
person[:age] #=> 24
person[:handsome] #=> true
person[:languages] #=> ["Ruby" "JavaScript"]
person[:languages][0] #=> "Ruby"
person["name"] #=> nil

# Edge cases:

# Shorthand syntax from Ruby 3.1 for hash when you have a variable name that also matches the key that you want to add to a hash
red = 230
green = 0
blue = 50
colors = { red:, green:, blue: } # the same as `color = { red: red, green: green, blue: blue }`
colors        #=> {red: 230, green: 0, blue: 50}
colors[:red]  #=> 230

# Edge cases:
colors = { red:, green:, blue:, orange: } #=> undefined method 'orange' for main (NoMethodError)
