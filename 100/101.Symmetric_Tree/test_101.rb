require 'test/unit'
require './101'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_101
    n1 = TreeNode.new(2)
    n1.left = TreeNode.new(3)
    n1.right = TreeNode.new(4)
    n2 = TreeNode.new(2)
    n2.left = TreeNode.new(4)
    n2.right = TreeNode.new(3)
    head = TreeNode.new(1)
    head.left = n1
    head.right = n2
    assert_equal true, is_symmetric(head)

    n1 = TreeNode.new(2)
    n1.right = TreeNode.new(3)
    n2 = TreeNode.new(2)
    n2.right = TreeNode.new(3)
    head = TreeNode.new(1)
    head.left = n1
    head.right = n2
    assert_equal false, is_symmetric(head)

    assert_equal true, is_symmetric(nil)
  end
end
