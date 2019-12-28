require 'test/unit'
require './5134'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5134
    assert_equal [-1], replace_elements([1])
    assert_equal [18,6,6,6,1,-1], replace_elements([17,18,5,4,6,1])

    input = Array.new(10 ** 4, 1)
    expected = Array.new(10 ** 4 - 1, 1).push(-1)
    assert_equal expected, replace_elements(input)
  end
end
