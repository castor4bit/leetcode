require 'test/unit'
require './746'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_746
    assert_equal 15, min_cost_climbing_stairs([10, 15, 20])
    assert_equal 6, min_cost_climbing_stairs([1, 100, 1, 1, 1, 100, 1, 1, 100, 1])
  end
end
