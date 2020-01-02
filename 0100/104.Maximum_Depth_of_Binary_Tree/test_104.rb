require 'test/unit'
require './104'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_104
    head = nil
    assert_equal 0, max_depth(head)

    head = TreeNodeUtil.array_to_treenode([1])
    assert_equal 1, max_depth(head)

    head = TreeNodeUtil.array_to_treenode([1, 2])
    assert_equal 2, max_depth(head)

    head = TreeNodeUtil.array_to_treenode([1, nil, 2])
    assert_equal 2, max_depth(head)

    head = TreeNodeUtil.array_to_treenode([1, nil, 2, nil, nil, 3, 4])
    assert_equal 3, max_depth(head)

    head = TreeNodeUtil.array_to_treenode([3, 9, 20, nil, nil, 15, 7])
    assert_equal 3, max_depth(head)
  end
end
