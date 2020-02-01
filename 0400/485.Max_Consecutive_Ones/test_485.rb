require 'test/unit'
require './485'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test485
    assert_equal 3, find_max_consecutive_ones([1,1,0,1,1,1])
    assert_equal 1, find_max_consecutive_ones([1])
    assert_equal 0, find_max_consecutive_ones([0])
  end
end
