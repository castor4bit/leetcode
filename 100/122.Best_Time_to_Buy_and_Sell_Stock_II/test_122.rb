require 'test/unit'
require './122'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_122
    assert_equal 7, max_profit([7,1,5,3,6,4])
    assert_equal 4, max_profit([1,2,3,4,5])
    assert_equal 0, max_profit([])
    assert_equal 0, max_profit([7,6,4,3,1])

    input = (10000..0).to_a + Array.new(10000, 0)
    assert_equal 0, max_profit(input)
  end
end
