require 'test/unit'
require './189'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_189
    nums = [1,2,3,4,5,6,7]
    rotate(nums, 3)
    assert_equal [5,6,7,1,2,3,4], nums

    nums = [-1,-100,3,99]
    rotate(nums, 2)
    assert_equal [3,99,-1,-100], nums

    nums = [1,2,3]
    rotate(nums, 0)
    assert_equal [1,2,3], nums
  end
end
