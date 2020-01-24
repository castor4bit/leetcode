require 'test/unit'
require './453'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test453
    assert_equal 3, min_moves([1, 2, 3])
    assert_equal 10, min_moves([1, 2, 10])
    assert_equal 8, min_moves([-5, -4, -3, 0])
    assert_equal 15343, min_moves([1, 2, 4, 50, 43, 546, 6437, -324, -435, 4234, 0])
  end
end
