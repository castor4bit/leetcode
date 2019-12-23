require 'test/unit'
require './066'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_066
    assert_equal [1,2,4], plus_one([1,2,3])
    assert_equal [4,3,2,2], plus_one([4,3,2,1])
    assert_equal [1,0,0,0], plus_one([9,9,9])
  end
end
