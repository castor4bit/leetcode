require 'test/unit'
require './111'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_111
    head = nil
    assert_equal 0, min_depth(head)

    head = TreeNodeUtil.array_to_treenode([1])
    assert_equal 1, min_depth(head)

    head = TreeNodeUtil.array_to_treenode([1, 2])
    assert_equal 2, min_depth(head)

    head = TreeNodeUtil.array_to_treenode([1, nil, 2])
    assert_equal 2, min_depth(head)

    head = TreeNodeUtil.array_to_treenode([1, 2, 3, nil, nil, 4, 5])
    assert_equal 2, min_depth(head)

    head = TreeNodeUtil.array_to_treenode([3, 9, 20, nil, nil, 15, 7])
    assert_equal 2, min_depth(head)
  end
end
