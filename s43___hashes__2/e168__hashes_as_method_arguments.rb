# Hashes as Method Arguments
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482502#overview) is the link to the video.

# order of params matters
def calculate_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  (price + tip_amount + tax_amount).round(2)
end
calculate_total_1(24.99, 0.18, 0.07) #=> 31.24
calculate_total_1(0.18, 0.07, 24.99) #=> 4.69

# order doesn't mater
def calculate_total_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  (info[:price] + tip_amount + tax_amount).round(2)
end
calculate_total_2({ price: 24.99, tip: 0.18, tax: 0.07 }) #=> 31.24
calculate_total_2({ tip: 0.18, tax: 0.07, price: 24.99 }) #=> 31.24

# Shorthand version of :calculate_total_2
def calculate_total_3(price:, tax:, tip:)
  tax_amount = price * tax
  tip_amount = price * tip
  (price + tip_amount + tax_amount).round(2)
end
# we can omit `{}` if hash is the last argument
calculate_total_3(price: 24.99, tip: 0.18, tax: 0.07) #=> 31.24
calculate_total_3(tip: 0.18, tax: 0.07, price: 24.99) #=> 31.24
