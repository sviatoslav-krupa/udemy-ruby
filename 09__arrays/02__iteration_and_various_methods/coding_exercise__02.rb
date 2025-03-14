# CHALLENGE: The .each_with_index Method

# [1, 2, 3, 4, 5]
# Write a loop that gives a sum of the products of each index and its value

def sum_of_products(array)
  sum = 0
  array.each_with_index do |number, index|
    sum += number * index
  end
  sum
end

numbers = [1, 2, 3, 4, 5]
sum_of_products(numbers) #=> 40

# [-1, 2, 1, 2, 5, 7, 3]
# Prints the product of the element and its index position if the index is greater than the element

def print_if(array)
  array.each_with_index do |number, index|
    if index > number
      product = index * number
      puts "The product of number #{number} and index #{index} is #{product}"
    end
  end
end

numbers = [-1, 2, 1, 2, 5, 7, 3]

print_if(numbers)
# OUTPUT:
#   The product of number -1 and index 0 is 0
#   The product of number 1 and index 2 is 2
#   The product of number 2 and index 3 is 6
#   The product of number 3 and index 6 is 18
