# Notes:
#   * `assert_raises` is used to check whether the code raises an error

# Syntax:
#   * assert_raises(SpecificErrorClass) do
#       `code that can raise a specific error`
#     end

require "minitest/autorun"

class InvalidAttackError < StandardError; end

class Pokemon
  attr_reader :name, :type, :attacks

  def initialize(name, type)
    @name = name
    @type = type
    @attacks = []
  end

  def add_attack(attack)
    raise InvalidAttackError unless attack.is_a?(String)
    attacks << attack
  end
end

class TestPokemon < Minitest::Test
  def setup
    @pikachu = Pokemon.new("Pikachu", :electric)
  end

  def test_adding_fake_power
    assert_raises(InvalidAttackError) do
      @pikachu.add_attack(15)
    end
  end
end

# OUTPUT:
#   Run options: --seed 51078
#
#   Running:
#
#   .
#
#   Finished in 0.000404s, 2475.2475 runs/s, 2475.2475 assertions/s.
#
#   1 runs, 1 assertions, 0 failures, 0 errors, 0 skips
