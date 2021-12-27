# Splat Arguments
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482404#overview) is the link to the video.

# splat arguments - when the number of arguments is unknown

def sum(*nums) # :nums is an array
  sum = 0
  nums.each { |num| sum += num }
  sum
end

sum(1, 2) #=> 3
sum(3, 4, 6, 9) #=> 21
sum #=> 0 (:nums == [])
