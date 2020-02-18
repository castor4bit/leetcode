require 'test/unit'
require './015'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_015
    assert_equal [[-1, 0, 1], [-1, -1, 2]].sort, three_sum([-1, 0, 1, 2, -1, -4]).sort
    assert_equal [[0, 0, 0]], three_sum(Array.new(3000, 0))
  end
end
