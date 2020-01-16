require 'test/unit'
require './437'
require '../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test437
    root = TreeNodeUtil.array_to_treenode([10, 5, -3, 3, 2, nil, 11, 3, -2, nil, 1])
    sum = 8
    assert_equal 3, path_sum(root, sum)
  end
end
