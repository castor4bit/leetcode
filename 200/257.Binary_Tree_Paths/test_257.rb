require 'test/unit'
require './257'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_257
    head = TreeNodeUtil.array_to_treenode([1, 2, 3, nil, 5])
    expected = ["1->2->5", "1->3"]
    assert_equal expected.sort, binary_tree_paths(head).sort

    head = TreeNodeUtil.array_to_treenode([])
    expected = []
    assert_equal expected.sort, binary_tree_paths(head).sort

    head = TreeNodeUtil.array_to_treenode([1])
    expected = ["1"]
    assert_equal expected.sort, binary_tree_paths(head).sort
  end
end
