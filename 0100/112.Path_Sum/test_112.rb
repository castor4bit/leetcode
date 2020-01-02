require 'test/unit'
require './112'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_112
    head = nil
    assert_equal false, has_path_sum(head, 1)

    head = TreeNodeUtil.array_to_treenode([1, 2, 3])
    assert_equal false, has_path_sum(head, 2)

    head = TreeNodeUtil.array_to_treenode([1, 2, 3])
    assert_equal true, has_path_sum(head, 3)

    head = TreeNodeUtil.array_to_treenode([1, 2, 3])
    assert_equal true, has_path_sum(head, 4)

    head = TreeNodeUtil.array_to_treenode([5, 4, 8, 11, nil, 13, 4, 7, 2, nil, 1])
    assert_equal true, has_path_sum(head, 22)
  end
end
