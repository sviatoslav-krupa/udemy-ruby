# Notes:
#   * The last argument for `assert_something` method is a custom message that is displayed in case of failure

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

  def test_name
    assert_equal("Wrong name", @pikachu.name, "The Pokemon object did not assign its name correctly")
  end

  def test_type
    assert_equal(:wrong_type, @pikachu.type, "The Pokemon object did not assign its type correctly")
  end

  def test_adding_new_power
    @pikachu.add_attack("Lightning Bolt")
    @pikachu.add_attack("Electric Shock")
    @pikachu.add_attack("Shock Treatment")

    assert_includes(@pikachu.attacks, "Wrong attack", "The add_attack method did not correctly add a power to the Pokemon's attack collection")
  end

  def test_adding_fake_power
    assert_raises(InvalidAttackError, "Adding a non-string attack should have triggered an error but did not") do
      @pikachu.add_attack(15)
    end
  end
end

# OUTPUT:
#   Run options: --seed 17543
#
#   Running:
#
#   .FFF
#
#   Finished in 0.000473s, 8456.6596 runs/s, 10570.8245 assertions/s.
#
#     1) Failure:
#   TestPokemon#test_adding_new_power [23__testing_with_minitests/06__final_argument_to_assertion_methods.rb:38]:
#   The add_attack method did not correctly add a power to the Pokemon's attack collection.
#   Expected ["Lightning Bolt", "Electric Shock", "Shock Treatment"] to include "Wrong attack".
#
#     2) Failure:
#   TestPokemon#test_name [23__testing_with_minitests/06__final_argument_to_assertion_methods.rb:26]:
#   The Pokemon object did not assign its name correctly.
#   Expected: "Wrong name"
#     Actual: "Pikachu"
#
#     3) Failure:
#   TestPokemon#test_type [23__testing_with_minitests/06__final_argument_to_assertion_methods.rb:30]:
#   The Pokemon object did not assign its type correctly.
#   Expected: :wrong_type
#     Actual: :electric
#
#   4 runs, 5 assertions, 3 failures, 0 errors, 0 skips
