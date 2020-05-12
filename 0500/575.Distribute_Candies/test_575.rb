require 'test/unit'
require './575'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test575
    assert_equal 3, distribute_candies([1, 1, 2, 2, 3, 3])
    assert_equal 2, distribute_candies([1, 1, 2, 3])
  end
end
