# Notes:
#   * public - allows interaction with an object. Can be called by any other object
#   * protected - can be called outside the object ONLY if another object (where protected method calls) has the same class family
#   * private - can be called within the object, by another instance methods. Can't be called with an explicit receiver - only the current object is able to receive the method

class Car
  def initialize(age, miles)
    base_value = 20000
    age_deduction = age * 1000
    miles_deduction = miles / 10.0

    @value = base_value - age_deduction - miles_deduction
  end

  def compare_car_with(another_car)
    self.value > another_car.value ? "Your car is better!" : "Your car is worse." # :another_car should be a Car instance to have access to :value protected property
  end

  protected

  attr_reader :value # other objects of the same class can access it
end

civic = Car.new(3, 30000)
civic.value #=> protected method `value' called for #<Car:0x00007fb4f121c2c8 @value=14000.0> (NoMethodError)

fiat = Car.new(1, 20000)

civic.compare_car_with(fiat) #=> "Your car is worse."
fiat.compare_car_with(civic) #=> "Your car is better!"
