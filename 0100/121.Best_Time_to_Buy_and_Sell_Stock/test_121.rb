require 'test/unit'
require './121'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_121
    assert_equal 5, max_profit([7,1,5,3,6,4])
    assert_equal 0, max_profit([7,6,4,3,1])
    assert_equal 0, max_profit([])

    input = (10000..0).to_a + Array.new(10000, 0)
    assert_equal 0, max_profit(input)
  end
end
