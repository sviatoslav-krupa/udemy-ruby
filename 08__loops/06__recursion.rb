# Notes:
#   * Recursion is when a method calls itself
#   * Must have `base case` - condition that tells the recursion to stop!


# factorials
# 5! = 5 * 4 * 3 * 2 * 1 = 120

# 5 * 4!
#     4 * 3!
#         3 * 2!
#             2 * 1!

# 4! = 4 * 3 * 2 * 1     = 24
# 3! = 3 * 2 * 1         = 6
# 2! = 2 * 1             = 2
# 1! = 1                 = 1

def factorial(number)
  return 1 if number == 1
  number * factorial(number - 1)
end
factorial(5) #=> 120
# First Layer:    5 * factorial(4)
# Second Layer:   4 * factorial(3)
# Third Layer:    3 * factorial(2)
# Fourth Layer:   2 * factorial(1)
# Fifth Layer:    1

"straw".reverse #=> "warts"
def reverse_by_loop(text)
  last_index = text.length - 1
  reversed_text = ""
  while last_index >= 0
    reversed_text += text[last_index]
    last_index -= 1
  end
  reversed_text
end
reverse_by_loop("straw") #=> "warts"

def reverse_by_recursion(text)
  return text if text.length == 1
  last_character = text[-1]
  remainder = text[0, text.length - 1]
  last_character + reverse_by_recursion(remainder)
end
reverse_by_recursion("straw") #=> "warts"
# First Layer:    "w" * reverse_by_recursion("stra")
# Second Layer:   "a" * reverse_by_recursion("str")
# Third Layer:    "r" * reverse_by_recursion("st")
# Fourth Layer:   "t" * reverse_by_recursion("s")
# Fifth Layer:    "s"
