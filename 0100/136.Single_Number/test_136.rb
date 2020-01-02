require 'test/unit'
require './136'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_136
    assert_equal 1, single_number([2, 2, 1])
    assert_equal 4, single_number([4, 1, 2, 1, 2])
    assert_equal 16, single_number([17,12,5,-6,12,4,17,-5,2,-3,2,4,5,16,-3,-4,15,15,-4,-5,-6])

    input = (1..10000).to_a + (1..10000).to_a + [10001]
    assert_equal 10001, single_number(input)
  end
end
