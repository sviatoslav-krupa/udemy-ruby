# The .length and .empty? Methods on a Hash
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482486#overview) is the link to the video.

shopping_list = {
  bananas: 5,
  oranges: 10,
  carrots: 3,
  crackers: 15
}
vegan_shopping_list = {}

# .length - number of key-value pairs
shopping_list.length #=> 4
vegan_shopping_list.length #=> 0

# .empty? - if length is 0
shopping_list.empty? #=> false
vegan_shopping_list.empty? #=> true

# Edge case
{ a: "qwe", b: "qwe", a: "another qwe"}.length #=> 2
