require 'test/unit'
require './treenode'

class TreeNodeTest < Test::Unit::TestCase
  def test_treenode
    node = TreeNode.new(1)
    assert_equal 1, node.val
    assert_equal nil, node.left
    assert_equal nil, node.right
  end
end

class TreeNodeUtilTest < Test::Unit::TestCase
  def test_array_to_treenode
    head = TreeNodeUtil.array_to_treenode([1, 2, 3])
    assert_equal 1, head.val
    assert_equal 2, head.left.val
    assert_equal 3, head.right.val

    head = TreeNodeUtil.array_to_treenode([3, 9, 20, nil, nil, 15, 7])
    assert_equal 3, head.val
    assert_equal 9, head.left.val
    assert_equal 20, head.right.val
    assert_equal 15, head.right.left.val
    assert_equal 7, head.right.right.val
  end

  def test_treenode_to_array
    node = TreeNode.new(1)
    assert_equal [1], TreeNodeUtil.treenode_to_array(node)

    node = TreeNode.new(1)
    node.left = TreeNode.new(2)
    assert_equal [1, 2], TreeNodeUtil.treenode_to_array(node)

    node = TreeNode.new(1)
    node.right = TreeNode.new(2)
    assert_equal [1, nil, 2], TreeNodeUtil.treenode_to_array(node)
  end
end

