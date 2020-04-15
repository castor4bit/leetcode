require 'test/unit'
require './543'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test543
    root = TreeNodeUtil.array_to_treenode([1, 2, 3, 4, 5])
    assert_equal 3, diameter_of_binary_tree(root)

    root = TreeNodeUtil.array_to_treenode([1, nil, 3])
    assert_equal 1, diameter_of_binary_tree(root)

    root = TreeNodeUtil.array_to_treenode([1, nil, 2, 3, nil, 4, nil, 5, nil, 6])
    assert_equal 5, diameter_of_binary_tree(root)
  end
end
