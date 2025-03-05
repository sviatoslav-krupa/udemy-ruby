file = File.open('01__novel.txt')

file.each do |line| # iterate through each line in file
  puts line
end
# OUTPUT:
#   Great American Novel
#   by Sviat
#
#   Chapter 1
#   Once upon a time...
