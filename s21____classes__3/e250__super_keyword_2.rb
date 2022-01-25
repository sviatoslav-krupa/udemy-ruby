# The super Keyword II
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482684#search) is the link to the video.

# .super - (without parentheses), passes all arguments to superclass method.
# .super() - (with empty parentheses, no arguments), call superclass method without any arguments.
# .super(name, age) - (with explicit arguments in parentheses), passes only explicit arguments to superclass method.

class Vehicle
  attr_reader :maker

  def initialize(maker)
    @maker = maker
  end

  def drive
    "Room! Room!"
  end
end

class Firetruck < Vehicle
  attr_reader :sirens

  # .super(name, age) with explicit arguments in parentheses
  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end

  # .super without parentheses
  # def drive
  #   super + " Beep! Beep!"
  # end
  #=> firetruck.drive #=> "Room! Room! Beep! Beep!"

  # .super() with empty parentheses, no arguments
  def drive(speed)
    super() + " Beep! Beep! I'm driving at #{speed} miles per hour."
  end
  #=> firetruck.drive(45) #=> "Room! Room! Beep! Beep! I'm driving at 45 miles per hour."
end

firetruck = Firetruck.new("Ford", 5)
firetruck.maker #=> "Ford"
firetruck.sirens #=> 5
