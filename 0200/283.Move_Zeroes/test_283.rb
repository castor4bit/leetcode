require 'test/unit'
require './283'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_283
    nums = [0, 1, 0, 3, 12]
    move_zeroes(nums)
    assert_equal [1, 3, 12, 0, 0], nums
  end
end
