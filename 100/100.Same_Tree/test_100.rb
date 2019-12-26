require 'test/unit'
require './100'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_100
    p = TreeNode.new(1)
    p.left = TreeNode.new(2)
    p.right = TreeNode.new(3)
    q = TreeNode.new(1)
    q.left = TreeNode.new(2)
    q.right = TreeNode.new(3)
    assert_equal true, is_same_tree(p, q)

    p = TreeNode.new(1)
    p.left = TreeNode.new(2)
    q = TreeNode.new(1)
    q.right = TreeNode.new(2)
    assert_equal false, is_same_tree(p, q)

    p = TreeNode.new(1)
    p.left = TreeNode.new(2)
    p.right = TreeNode.new(1)
    q = TreeNode.new(1)
    q.left = TreeNode.new(1)
    q.right = TreeNode.new(2)
    assert_equal false, is_same_tree(p, q)
  end
end
