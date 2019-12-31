require 'test/unit'
require './217'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_217
    assert_equal true, contains_duplicate([1, 2, 3, 1])
    assert_equal false, contains_duplicate([1, 2, 3, 4])
    assert_equal true, contains_duplicate([1,1,1,3,3,4,3,2,4,2])
    assert_equal false, contains_duplicate([])
  end
end
