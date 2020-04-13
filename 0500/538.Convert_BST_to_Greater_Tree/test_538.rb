require 'test/unit'
require './538'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test538
    root = TreeNodeUtil.array_to_treenode([5, 2, 13])
    convert_bst(root)

    assert_equal 18, root.val
    assert_equal 20, root.left.val
    assert_equal 13, root.right.val
  end
end
