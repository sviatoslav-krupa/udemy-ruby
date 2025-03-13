# Notes:
#   *  .include?, .member? or === - check if value exists in a range

half_alphabet = "a".."m"
numbers = -14..79

# .include?
half_alphabet.include?("c") #=> true
half_alphabet.include?("z") #=> false
half_alphabet.include?("E") #=> false
numbers.include?(-12)       #=> true
numbers.include?(75)        #=> true
numbers.include?(100)       #=> false

# .member?
half_alphabet.member?("c")  #=> true
half_alphabet.member?("z")  #=> false
half_alphabet.member?("E")  #=> false
numbers.member?(-12)        #=> true
numbers.member?(75)         #=> true
numbers.member?(100)        #=> false

# ===
half_alphabet === "c" #=> true
half_alphabet === "z" #=> false
half_alphabet === "E" #=> false
numbers === -12       #=> true
numbers === 75        #=> true
numbers === 100       #=> false


# Edge cases:
(14.2..20.7).include?(15)   #=> true
(14.2..20.7).include?(15.7) #=> true
(14.2..20.7).include?(20.7) #=> true
(14.2..20.7).include?(20.8) #=> false

("a".."m").include?("m")          #=> true
("a".."m") === "m"                #=> true
"a".."m".include?("m")  #=> bad value for range (ArgumentError)
"a".."m" === "m"                  #=> bad value for range (ArgumentError)

("a"..."m").include?("m")           #=> false
("a"..."m") === "m"                 #=> false
"a"..."m".include?("m")   #=> bad value for range (ArgumentError)
"a"..."m" === "m"                   #=> bad value for range (ArgumentError)
