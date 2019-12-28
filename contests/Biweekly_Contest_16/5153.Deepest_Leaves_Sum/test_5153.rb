require 'test/unit'
require './5153'
require '../../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5153
    root = TreeNodeUtil.array_to_treenode([1,2,3,4,5,nil,6,7,nil,nil,nil,nil,nil,nil,8])
    assert_equal 15, deepest_leaves_sum(root)

    root = TreeNodeUtil.array_to_treenode([1])
    assert_equal 1, deepest_leaves_sum(root)

    root = TreeNodeUtil.array_to_treenode([1, 2, 3])
    assert_equal 5, deepest_leaves_sum(root)

    root = TreeNodeUtil.array_to_treenode([])
    assert_equal 0, deepest_leaves_sum(root)
  end
end
