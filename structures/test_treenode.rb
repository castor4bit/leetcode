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

    head = TreeNodeUtil.array_to_treenode([1, 2, 2, 3, nil, nil, 3, 4, nil, nil, 4])
    assert_equal 1, head.val
    assert_equal 2, head.left.val
    assert_equal 2, head.right.val
    assert_equal 3, head.left.left.val
    assert_equal 3, head.right.right.val
    assert_equal 4, head.left.left.left.val
    assert_equal 4, head.right.right.right.val

    head = TreeNodeUtil.array_to_treenode([1, nil, 2, nil, 3, nil, 4, 5, 6, nil, nil, nil, 7, nil, 8])
    assert_equal 1, head.val
    assert_equal 2, head.right.val
    assert_equal 3, head.right.right.val
    assert_equal 4, head.right.right.right.val
    assert_equal 5, head.right.right.right.left.val
    assert_equal 6, head.right.right.right.right.val
    assert_equal 7, head.right.right.right.right.right.val
    assert_equal 8, head.right.right.right.right.right.right.val
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

    node = nil
    assert_equal [], TreeNodeUtil.treenode_to_array(node)
  end
end
