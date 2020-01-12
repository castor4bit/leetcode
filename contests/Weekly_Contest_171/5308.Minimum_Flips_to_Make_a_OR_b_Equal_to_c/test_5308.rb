require 'test/unit'
require './5308'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5308
    assert_equal 3, min_flips(2, 6, 5)
    assert_equal 1, min_flips(4, 2, 7)
    assert_equal 0, min_flips(1, 2, 3)
  end
end
