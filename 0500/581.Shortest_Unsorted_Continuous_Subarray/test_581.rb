require 'test/unit'
require './581'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test581
    assert_equal 0, find_unsorted_subarray([2])
    assert_equal 0, find_unsorted_subarray([1, 2])
    assert_equal 0, find_unsorted_subarray([1, 2, 3, 4, 5])
    assert_equal 0, find_unsorted_subarray([1, 1, 1, 1, 1])
    assert_equal 4, find_unsorted_subarray([1, 3, 2, 2, 2])
    assert_equal 2, find_unsorted_subarray([2, 1])
    assert_equal 2, find_unsorted_subarray([1, 3, 2, 4, 5])
    assert_equal 5, find_unsorted_subarray([2, 6, 4, 8, 10, 9, 15])
  end
end
