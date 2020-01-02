require 'test/unit'
require './235'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_235
    head = TreeNodeUtil.array_to_treenode([6, 2, 8, 0, 4, 7, 9, nil, nil, 3, 5])
    p = TreeNode.new(2)
    q = TreeNode.new(8)
    assert_equal 6, lowest_common_ancestor(head, p, q).val

    p = TreeNode.new(2)
    q = TreeNode.new(4)
    head = TreeNodeUtil.array_to_treenode([6, 2, 8, 0, 4, 7, 9, nil, nil, 3, 5])
    assert_equal 2, lowest_common_ancestor(head, p, q).val

    p = TreeNode.new(2)
    q = TreeNode.new(1)
    head = TreeNodeUtil.array_to_treenode([2, 1])
    assert_equal 2, lowest_common_ancestor(head, p, q).val
  end
end
