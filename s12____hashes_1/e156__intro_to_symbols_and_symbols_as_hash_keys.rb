# Intro to Symbols and Symbols as Hash Keys
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482478#overview) is the link to the video.

# Symbol - lightweight String. It doesn't include as many methods as String, so it uses less memory.

# .methods - list of all available methods on an abject

p :name #=> :name
p :name.class #=> Symbol
p :name.methods.length #=> 92

p "name" #=> "name"
p "name".class #=> String
p "name".methods.length #=> 188

person = {
  :name => "Sviat",
  :age => 24,
  :handsome => true,
  :languages => %w[Ruby JavaScript]
}

# Shorthand syntax from Ruby 1.9 for hash with symbols as keys:
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

# Edge case
person["name"] #=> nil
