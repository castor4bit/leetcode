require 'test/unit'
require './326'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_326
    assert_equal true, is_power_of_three(27)
    assert_equal false, is_power_of_three(0)
    assert_equal true, is_power_of_three(9)
    assert_equal false, is_power_of_three(45)
  end
end
