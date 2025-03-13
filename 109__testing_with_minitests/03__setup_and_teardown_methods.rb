# Notes:
#   * `setup` method is called before each test
#   * `teardown` method is called after each test
#   * `setup` is used to create objects and set up the environment for the test
#   * `teardown` is used to clean up the environment after the test

require "minitest/autorun"

class Pokemon
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
  end
end

class TestPokemon < Minitest::Test
  # Run this method before each test
  def setup
    @pikachu = Pokemon.new("Pikachu", :electric) # should use instance variables instead of local variables because they are available to all methods in the class
  end

  # Run this method after each test
  def teardown
    puts "Test is done. Deleting Pokemon from database"
  end

  def test_name
    assert_equal("Pikachu", @pikachu.name)
  end

  def test_type
    assert_equal(:electric, @pikachu.type)
  end
end

# OUTPUT:
#   Run options: --seed 19646
# 
#   Running:
#
#   Test is done. Deleting Pokemon from database
#   .Test is done. Deleting Pokemon from database
#   .
#
#   Finished in 0.000301s, 6644.5183 runs/s, 6644.5183 assertions/s.
#
#   2 runs, 2 assertions, 0 failures, 0 errors, 0 skip
