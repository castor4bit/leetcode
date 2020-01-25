require 'test/unit'
require './5155'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test5155
    assert_equal [4,1,2,3], array_rank_transform([40,10,20,30])
    assert_equal [1,1,1], array_rank_transform([100,100,100])
    assert_equal [5,3,4,2,8,6,7,1,3], array_rank_transform([37,12,28,9,100,56,80,5,12])
  end
end
