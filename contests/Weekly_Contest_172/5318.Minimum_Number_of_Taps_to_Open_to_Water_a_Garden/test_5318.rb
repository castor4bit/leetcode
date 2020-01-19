require 'test/unit'
require './5318'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5318
    assert_equal 1, min_taps(5, [3, 4, 1, 1, 0, 0])
    assert_equal -1, min_taps(3, [0, 0, 0, 0])
    assert_equal 3, min_taps(7, [1, 2, 1, 0, 2, 1, 0, 1])
    assert_equal 2, min_taps(8, [4, 0, 0, 0, 0, 0, 0, 0, 4])
    assert_equal 1, min_taps(8, [4, 0, 0, 0, 4, 0, 0, 0, 4])
    assert_equal 6, min_taps(35, [1, 0, 4, 0, 4, 1, 4, 3, 1, 1, 1, 2, 1, 4, 0, 3, 0, 3, 0, 3, 0, 5, 3, 0, 0, 1, 2, 1, 2, 4, 3, 0, 1, 0, 5, 2])
  end
end
