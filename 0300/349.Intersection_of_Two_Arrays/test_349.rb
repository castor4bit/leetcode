require 'test/unit'
require './349'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_349
    nums1 = [1, 2, 2, 1]
    nums2 = [2, 2]
    assert_equal [2].sort, intersection(nums1, nums2).sort

    nums1 = [4, 9, 5]
    nums2 = [9, 4, 9, 8, 4]
    assert_equal [9, 4].sort, intersection(nums1, nums2).sort

    nums1 = []
    nums2 = []
    assert_equal [].sort, intersection(nums1, nums2).sort
  end
end
