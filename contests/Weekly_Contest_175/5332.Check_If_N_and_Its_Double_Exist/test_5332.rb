require 'test/unit'
require './5332'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test5332
    assert_equal true, check_if_exist([10, 2, 5, 3])
    assert_equal true, check_if_exist([7, 1, 14, 11])
    assert_equal false, check_if_exist([3, 1, 7, 11])
    assert_equal false, check_if_exist([-2, 0, 10, -19, 4, 6, -8])
    assert_equal true, check_if_exist([0, 0])
  end
end
