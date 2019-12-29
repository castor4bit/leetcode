require 'test/unit'
require './5297'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5297
    assert_equal true, can_reach([4,2,3,0,3,1,2], 5)
    assert_equal true, can_reach([4,2,3,0,3,1,2], 0)
    assert_equal false, can_reach([3,0,2,1,2], 2)

    arr = Array.new(25000, 1) + [0] + Array.new(25000, 1)
    assert_equal true, can_reach(arr, 5)
  end
end
