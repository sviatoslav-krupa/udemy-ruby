# Notes:
#   * A test - is code that validates that other code works as expected
#   * MiniTest - is a built-in unit testing framework included in the Ruby standard library
#   * Test class should inherit from Minitest::Test
#   * Test methods should start with `test_`
#   * Test methods run independently of each other. they are isolated from each other
#   * Assertions - are methods that validate that a condition is true
#   * Run test files as a regular Ruby file: `ruby filename.rb`
#   * `assert_equal` is used to check the equality

# Syntax:
#   * assert_equal(first_element, second_element)

require "minitest/autorun"

def sum(a, b)
  a + b
end

class TestMathematics < Minitest::Test
  def test_sum_method
    assert_equal(sum(2, 3), 5)
  end

  def test_sum_method_again # failed test
    assert_equal(sum(3, 4), 8)
  end
end

# OUTPUT:
#   Run options: --seed 59196
# 
#   Running:
# 
#   .F (`.` means that the test passed; `F` means that the test failed)
# 
#   Finished in 0.000361s, 5540.1662 runs/s, 5540.1662 assertions/s.
# 
#     1) Failure:
#   TestMathematics#test_sum_method_again [109__testing_with_minitests/01__intro_to_testing.rb:21]:
#   Expected: 7
#     Actual: 8
# 
#   2 runs, 2 assertions, 1 failures, 0 errors, 0 skips
