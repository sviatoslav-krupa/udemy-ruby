# Coding Exercise 8: The to_s Method

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
