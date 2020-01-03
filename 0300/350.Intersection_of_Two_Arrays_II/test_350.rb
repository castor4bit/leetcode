require 'test/unit'
require './350'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_350
    nums1 = [1, 2, 2, 1]
    nums2 = [2, 2]
    assert_equal [2, 2].sort, intersect(nums1, nums2).sort

    nums1 = [4, 9, 5]
    nums2 = [9, 4, 9, 8, 4]
    assert_equal [4, 9].sort, intersect(nums1, nums2).sort

    nums1 = []
    nums2 = []
    assert_equal [].sort, intersect(nums1, nums2).sort
  end
end
