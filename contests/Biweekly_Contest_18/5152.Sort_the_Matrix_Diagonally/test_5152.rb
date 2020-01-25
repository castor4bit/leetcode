require 'test/unit'
require './5152'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test5152
    assert_equal [[1,1,1,1],[1,2,2,2],[1,2,3,3]], diagonal_sort([[3,3,1,1],[2,2,1,2],[1,1,1,2]])
  end
end
