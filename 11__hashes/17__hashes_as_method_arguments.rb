# positional argument (position, order of params matters)
def calculate_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  (price + tip_amount + tax_amount).round(2)
end
calculate_total_1(24.99, 0.18, 0.07) #=> 31.24
calculate_total_1(0.18, 0.07, 24.99) #=> 4.69

# order doesn't matter
def calculate_total_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  (info[:price] + tip_amount + tax_amount).round(2)
end
calculate_total_2({ price: 24.99, tip: 0.18, tax: 0.07 }) #=> 31.24
calculate_total_2({ tip: 0.18, tax: 0.07, price: 24.99 }) #=> 31.24
calculate_total_2({ price: 24.99, tip: 0.18 }) #=> nil can't be coerced into Float (TypeError) (no ArgumentError, nil can be handled in the method)

# Shorthand version of :calculate_total_2
def calculate_total_3(price:, tax:, tip:) # extract `info` keys
  tax_amount = price * tax
  tip_amount = price * tip
  (price + tip_amount + tax_amount).round(2)
end
# we can omit `{}` if hash is the last argument
calculate_total_3(price: 24.99, tip: 0.18, tax: 0.07) #=> 31.24
calculate_total_3(tip: 0.18, tax: 0.07, price: 24.99) #=> 31.24
calculate_total_3(price: 24.99, tip: 0.18) #=> missing keyword: :tax (ArgumentError)
