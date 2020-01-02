require 'test/unit'
require './167'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_167
    assert_equal [1,2], two_sum([2,7,11,15], 9)
    assert_equal [1,2], two_sum([0,0,3,4], 0)

    input = Array.new(13000, 0) + [2,3] + Array.new(13000, 9)
    assert_equal [13001, 13002], two_sum(input, 5)
  end
end
