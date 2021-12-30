# A Custom .each Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482526#overview) is the link to the video.

def custom_each(array)
  i = 0

  while i < array.length
    yield(array[i])
    i += 1
  end
end

custom_each([1, 2, 3]) { |num| puts num ** 2 }
=begin
  1
  4
  9
=end

custom_each(%w[Sviat Arnold Melissa]) { |name| p "#{name} is #{name.length}" }
=begin
  "Sviat is 5"
  "Arnold is 6"
  "Melissa is 7"
=end
