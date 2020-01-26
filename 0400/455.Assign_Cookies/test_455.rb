require 'test/unit'
require './455'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test455
    assert_equal 1, find_content_children([1,2,3], [1,1])
    assert_equal 3, find_content_children([1,2,3,4,5], [2,2,3,2,2])
    assert_equal 1, find_content_children([1,2,3], [3])
    assert_equal 1, find_content_children([5], [1,2,3,4,5,6])
  end
end
