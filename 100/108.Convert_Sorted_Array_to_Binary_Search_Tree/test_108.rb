require 'test/unit'
require './108'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_108
    input = [-10, -3, 0, 5, 9]
    expected = [0, -3, 9, -10, nil, 5]
    assert_equal expected, TreeNodeUtil.treenode_to_array(sorted_array_to_bst(input))
  end
end

