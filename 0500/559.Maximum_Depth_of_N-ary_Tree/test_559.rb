require 'test/unit'
require './559'
require '../../structures/nary_treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test559
    root = NaryTreeNodeUtil.array_to_treenode([1, nil, 3, 2, 4, nil, 5, 6])
    assert_equal 3, maxDepth(root)

    root = NaryTreeNodeUtil.array_to_treenode([1, nil, 2, 3, 4, 5, nil, nil, 6, 7, nil, 8, nil, 9, 10, nil, nil, 11, nil, 12, nil, 13, nil, nil, 14])
    assert_equal 5, maxDepth(root)
  end
end
