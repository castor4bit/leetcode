require 'test/unit'
require './342'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_342
    assert_equal true, is_power_of_four(16)
    assert_equal false, is_power_of_four(5)

    assert_equal false, is_power_of_four(0)
    assert_equal false, is_power_of_four(2)
    assert_equal true, is_power_of_four(1)
    assert_equal true, is_power_of_four(4 ** 15)
    assert_equal false, is_power_of_four(4 ** 15 + 1)
  end
end
