require 'test/unit'
require './5296'
require '../../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5296
    root1 = TreeNodeUtil.array_to_treenode([2,1,4])
    root2 = TreeNodeUtil.array_to_treenode([1,0,3])
    assert_equal [0,1,1,2,3,4], get_all_elements(root1, root2)

    root1 = TreeNodeUtil.array_to_treenode([0,-10,10])
    root2 = TreeNodeUtil.array_to_treenode([5,1,7,0,2])
    assert_equal [-10,0,0,1,2,5,7,10], get_all_elements(root1, root2)

    root1 = TreeNodeUtil.array_to_treenode([])
    root2 = TreeNodeUtil.array_to_treenode([5,1,7,0,2])
    assert_equal [0,1,2,5,7], get_all_elements(root1, root2)

    root1 = TreeNodeUtil.array_to_treenode([0,-10,10])
    root2 = TreeNodeUtil.array_to_treenode([])
    assert_equal [-10,0,10], get_all_elements(root1, root2)

    root1 = TreeNodeUtil.array_to_treenode([1,nil,8])
    root2 = TreeNodeUtil.array_to_treenode([8,1])
    assert_equal [1,1,8,8], get_all_elements(root1, root2)
  end
end
