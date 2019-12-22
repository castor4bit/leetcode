require 'test/unit'
require './053'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_053
    assert_equal 6, max_sub_array([-2,1,-3,4,-1,2,1,-5,4])
  end
end
