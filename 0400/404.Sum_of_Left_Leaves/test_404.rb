require 'test/unit'
require './404'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test404
    head = TreeNodeUtil.array_to_treenode([3, 9, 20, nil, nil, 15, 7])
    assert_equal 24, sum_of_left_leaves(head)

    head = TreeNodeUtil.array_to_treenode([1, 2, 3, 4, 5])
    assert_equal 4, sum_of_left_leaves(head)

    head = TreeNodeUtil.array_to_treenode([3])
    assert_equal 0, sum_of_left_leaves(head)

    head = TreeNodeUtil.array_to_treenode([3, 9, 20, nil, nil, 15, 7, 4, nil, 16])
    assert_equal 29, sum_of_left_leaves(head)
  end
end
