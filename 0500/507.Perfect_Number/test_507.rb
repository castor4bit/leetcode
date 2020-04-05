require 'test/unit'
require './507'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test507
    assert_equal false, check_perfect_number(-6)
    assert_equal false, check_perfect_number(0)
    assert_equal false, check_perfect_number(1)
    assert_equal false, check_perfect_number(3)
    assert_equal false, check_perfect_number(27)
    assert_equal true, check_perfect_number(28)
    assert_equal false, check_perfect_number(100000000)
  end
end
