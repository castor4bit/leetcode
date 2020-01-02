require 'test/unit'
require './226'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_226
    head = TreeNodeUtil.array_to_treenode([4, 2, 7, 1, 3, 6, 9])
    assert_equal [4, 7, 2, 9, 6, 3, 1], TreeNodeUtil.treenode_to_array(invert_tree(head))
  end
end
