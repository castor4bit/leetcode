require 'test/unit'
require './572'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test572
    s = TreeNodeUtil.array_to_treenode([3, 4, 5, 1, 2])
    t = TreeNodeUtil.array_to_treenode([4, 1, 2])
    assert_equal true, is_subtree(s, t)

    s = TreeNodeUtil.array_to_treenode([3, 4, 5, 1, 2, nil, nil, nil, nil, 0, nil])
    t = TreeNodeUtil.array_to_treenode([4, 1, 2])
    assert_equal false, is_subtree(s, t)
  end
end
