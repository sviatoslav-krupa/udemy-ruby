# Coding Exercise 8: The to_s Method
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/quiz/5421738#search) is the link to the exercise.

class Computer
  def initialize
    @cpu = 'Intel i7'
    @memory = 64
    @storage = '2 TB'
  end

  def to_s
    "A powerful #{@cpu} computer with #{@memory}GB memory and #{@storage} of storage"
  end
end
