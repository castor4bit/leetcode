require 'test/unit'
require './496'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_496
    assert_equal [-1, 3, -1], next_greater_element([4, 1, 2], [1, 3, 4, 2])
  end
end
