require 'test/unit'
require './110'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_110
    root = TreeNodeUtil.array_to_treenode([3, 9, 20, nil, nil, 15, 7])
    assert_equal true, is_balanced(root)

    root = TreeNodeUtil.array_to_treenode([1, 2, 2, 3, 3, nil, nil, 4, 4])
    assert_equal false, is_balanced(root)

    root = TreeNodeUtil.array_to_treenode([1, 2, 2, 3, nil, nil, 3, 4, nil, nil, 4])
    assert_equal false, is_balanced(root)
  end
end
