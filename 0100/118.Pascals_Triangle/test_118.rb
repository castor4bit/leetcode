require 'test/unit'
require './118'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_118
    assert_equal [], generate(0)
    assert_equal [[1]], generate(1)
    assert_equal [[1], [1,1]], generate(2)
    assert_equal [[1], [1,1], [1,2,1]], generate(3)
    assert_equal [[1], [1,1], [1,2,1], [1,3,3,1]], generate(4)
    assert_equal [[1], [1,1], [1,2,1], [1,3,3,1], [1,4,6,4,1]], generate(5)
  end
end
