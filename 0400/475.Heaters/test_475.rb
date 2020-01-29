require 'test/unit'
require './475'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test475
    assert_equal 1, find_radius([1,2,3], [2])
    assert_equal 1, find_radius([1,2,3,4], [1,4])
    assert_equal 2, find_radius([1,2,3,4,5], [1,5])
  end
end
