require 'test/unit'
require './5170'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5170
    assert_equal true, validate_binary_tree_nodes(4, [1,-1,3,-1], [2,-1,-1,-1])
    assert_equal false, validate_binary_tree_nodes(4, [1,-1,3,-1], [2,3,-1,-1])
    assert_equal false, validate_binary_tree_nodes(2, [1,0], [-1,-1])
    assert_equal false, validate_binary_tree_nodes(6, [1,-1,-1,4,-1,-1], [2,-1,-1,5,-1,-1])
  end
end
