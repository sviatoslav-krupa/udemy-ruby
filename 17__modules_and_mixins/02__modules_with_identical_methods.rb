module Square
  def self.area(side)
    side ** 2
  end
end

module Rectangle
  def self.area(length, width)
    length * width
  end
end

module Circle
  PI = 3.14159

  def self.area(radius)
    PI * (radius ** 2)
  end
end

Square.area(5)                #=> 25
Rectangle.area(3, 6)  #=> 18
Circle.area(9)              #=> 254.46878999999998
