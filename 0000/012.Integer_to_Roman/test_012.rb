require 'test/unit'
require './012'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test012
    assert_equal "III", int_to_roman(3)
    assert_equal "IV", int_to_roman(4)
    assert_equal "IX", int_to_roman(9)
    assert_equal "X", int_to_roman(10)
    assert_equal "C", int_to_roman(100)
    assert_equal "LVIII", int_to_roman(58)
    assert_equal "MCMXCIV", int_to_roman(1994)
  end
end
