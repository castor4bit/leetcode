require 'test/unit'
require './107'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_107
    head = TreeNodeUtil.array_to_treenode([3, 9, 20, nil, nil, 15, 7])
    result = level_order_bottom(head)
    assert_equal [15, 7], result[0]
    assert_equal [9, 20], result[1]
    assert_equal [3], result[2]

    head = TreeNodeUtil.array_to_treenode([])
    result = level_order_bottom(head)
    assert_equal [], result

    head = TreeNodeUtil.array_to_treenode([1, 2, 3, 4])
    result = level_order_bottom(head)
    assert_equal [4], result[0]
    assert_equal [2, 3], result[1]
    assert_equal [1], result[2]
  end
end
