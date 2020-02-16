require 'test/unit'
require './5342'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test5342
    assert_equal 3, max_events([[1, 2], [2, 3], [3, 4]])
    assert_equal 4, max_events([[1, 2], [2, 3], [3, 4], [1, 2]])
    assert_equal 4, max_events([[1, 4], [4, 4], [2, 2], [3, 4], [1, 1]])
    assert_equal 1, max_events([[1, 100000]])
    assert_equal 7, max_events([[1, 1], [1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7]])
    assert_equal 5, max_events([[1, 5], [1, 5], [1, 5], [2, 3], [2, 3]])
    assert_equal 4, max_events([[1, 3], [1, 3], [1, 3], [3, 4]])
  end
end
