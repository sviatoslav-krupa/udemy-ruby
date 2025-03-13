# Notes:
#   * `assert_includes` is used to check the inclusion

# Syntax:
#   * assert_includes(collection, element)

require "minitest/autorun"

class Pokemon
  attr_reader :name, :type, :attacks

  def initialize(name, type)
    @name = name
    @type = type
    @attacks = []
  end

  def add_attack(attack)
    attacks << attack
  end
end

class TestPokemon < Minitest::Test
  def setup
    @pikachu = Pokemon.new("Pikachu", :electric)
  end

  def test_adding_new_power
    @pikachu.add_attack("Lightning Bolt")
    @pikachu.add_attack("Electric Shock")
    @pikachu.add_attack("Shock Treatment")

    assert_includes(@pikachu.attacks, "Electric Shock")
  end
end

# OUTPUT:
#   Run options: --seed 37533
#
#   Running:
#
#   .
#
#   Finished in 0.000329s, 3039.5137 runs/s, 6079.0274 assertions/s.
#
#   1 runs, 2 assertions, 0 failures, 0 errors, 0 skips
