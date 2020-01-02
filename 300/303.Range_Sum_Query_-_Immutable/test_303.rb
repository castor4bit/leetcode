require 'test/unit'
require './303'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_303
    nums = [-2, 0, 3, -5, 2, -1]
    na = NumArray.new(nums)

    assert_equal 1, na.sum_range(0, 2)
    assert_equal -1, na.sum_range(2, 5)
    assert_equal -3, na.sum_range(0, 5)

    assert_equal -2, na.sum_range(0, 0)
    assert_equal 0, na.sum_range(10, 15)
    assert_equal 0, na.sum_range(-5, -3)
    assert_equal 1, na.sum_range(-5, 2)
  end
end

