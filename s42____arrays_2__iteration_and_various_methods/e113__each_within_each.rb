# .each within .each
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482328#overview) is the link to the video.

# .each within .each - for multidimensional operations

shirts = ["striped", "plain white", "plaid", "band"]
ties = ["polka dot", "solid color", "boring"]

shirts.each do |shirt|
  ties.each do |tie|
    puts "OPTION: A #{shirt} shirt and a #{tie} tie"
  end
end
=begin
OPTION: A striped shirt and a polka dot tie
OPTION: A striped shirt and a solid color tie
OPTION: A striped shirt and a boring tie
OPTION: A plain white shirt and a polka dot tie
OPTION: A plain white shirt and a solid color tie
OPTION: A plain white shirt and a boring tie
OPTION: A plaid shirt and a polka dot tie
OPTION: A plaid shirt and a solid color tie
OPTION: A plaid shirt and a boring tie
OPTION: A band shirt and a polka dot tie
OPTION: A band shirt and a solid color tie
OPTION: A band shirt and a boring tie
=end

# Edge case
shirts.each do |shirt|
  ties.each do |shirt| # the same block variable name
    puts "OPTION: A #{shirt} shirt and a #{shirt} tie" # :shirt from ties (line 31) is used, shadows upper :shirt (line 30)
  end
end
=begin
OPTION: A polka dot shirt and a polka dot tie
OPTION: A solid color shirt and a solid color tie
OPTION: A boring shirt and a boring tie
OPTION: A polka dot shirt and a polka dot tie
OPTION: A solid color shirt and a solid color tie
OPTION: A boring shirt and a boring tie
OPTION: A polka dot shirt and a polka dot tie
OPTION: A solid color shirt and a solid color tie
OPTION: A boring shirt and a boring tie
OPTION: A polka dot shirt and a polka dot tie
OPTION: A solid color shirt and a solid color tie
OPTION: A boring shirt and a boring tie
=end
