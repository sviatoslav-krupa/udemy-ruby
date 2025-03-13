# The .slice Method

# .slice is identical to Brackets syntax (as for String)

numbers = [0, 2, 4, 8, 10, 12, 14]

numbers.slice(3) #=> 8
numbers.slice(100) #=> nil
numbers.slice(3, 2) #=> [8, 10]
numbers.slice(3, 100) #=> [8, 10, 12, 14]
numbers.slice(1..4) #=> [2, 4, 8, 10]
numbers.slice(1..100) #=> [2, 4, 8, 10, 12, 14]
numbers.slice(1...4) #=> [2, 4, 8]
