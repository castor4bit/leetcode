require 'test/unit'
require './501'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test501
    root = TreeNodeUtil.array_to_treenode([1, nil, 2, 2])
    assert_equal [2].sort, find_mode(root).sort

    root = TreeNodeUtil.array_to_treenode([0, 4, 8, 4, 6, 5, 9, nil, nil, 5, 7])
    assert_equal [4, 5].sort, find_mode(root).sort
  end
end
