require 'test/unit'
require './530'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test530
    root = TreeNodeUtil.array_to_treenode([1, nil, 3, 2])
    assert_equal 1, get_minimum_difference(root)

    root = TreeNodeUtil.array_to_treenode([5, 4, 7])
    assert_equal 1, get_minimum_difference(root)
  end
end
