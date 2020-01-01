require 'test/unit'
require './231'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_231
    assert_equal true, is_power_of_two(1)
    assert_equal true, is_power_of_two(8)
    assert_equal true, is_power_of_two(16)
    assert_equal false, is_power_of_two(218)

    assert_equal false, is_power_of_two(500000000)
    assert_equal false, is_power_of_two(2147483646)
    assert_equal false, is_power_of_two(-4)
  end
end
