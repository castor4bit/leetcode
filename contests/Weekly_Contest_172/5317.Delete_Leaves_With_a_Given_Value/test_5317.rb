require 'test/unit'
require './5317'
require '../../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5317
    root = TreeNodeUtil.array_to_treenode([1, 2, 3, 2, nil, 2, 4])
    target = 2
    assert_equal [1, nil, 3, nil, nil, nil, 4], TreeNodeUtil.treenode_to_array(remove_leaf_nodes(root, target))

    root = TreeNodeUtil.array_to_treenode([1, 3, 3, 3, 2])
    target = 3
    assert_equal [1, 3, nil, nil, 2], TreeNodeUtil.treenode_to_array(remove_leaf_nodes(root, target))

    root = TreeNodeUtil.array_to_treenode([1, 2, nil, 2, nil, 2])
    target = 2
    assert_equal [1], TreeNodeUtil.treenode_to_array(remove_leaf_nodes(root, target))

    root = TreeNodeUtil.array_to_treenode([1, 1, 1])
    target = 1
    assert_equal [], TreeNodeUtil.treenode_to_array(remove_leaf_nodes(root, target))

    root = TreeNodeUtil.array_to_treenode([1, 2, 3])
    target = 1
    assert_equal [1, 2, 3], TreeNodeUtil.treenode_to_array(remove_leaf_nodes(root, target))
  end
end
