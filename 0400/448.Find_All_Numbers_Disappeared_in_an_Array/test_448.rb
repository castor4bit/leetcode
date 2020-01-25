require 'test/unit'
require './448'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test448
    assert_equal [5, 6], find_disappeared_numbers([4,3,2,7,8,2,3,1])
  end
end
