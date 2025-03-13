require "minitest/autorun"

class Pokemon
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
  end
end

class TestPokemon < Minitest::Test
  def test_name
    pikachu = Pokemon.new("Pikachu", :electric)
    assert_equal(pikachu.name, "Pikachu")
  end

  def test_type
    pikachu = Pokemon.new("Pikachu", :electric)
    assert_equal(pikachu.type, :electric)
  end
end

# OUTPUT:
#   Run options: --seed 31479
#
#   Running:
#
#   ..
#
#   Finished in 0.000410s, 4878.0488 runs/s, 4878.0488 assertions/s.
#
#   2 runs, 2 assertions, 0 failures, 0 errors, 0 skips
