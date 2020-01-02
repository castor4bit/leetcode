require 'test/unit'
require './088'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_088
    assert_equal [1,2,2,3,5,6], merge([1,2,3,0,0,0], 3, [2,5,6], 3)
  end
end
