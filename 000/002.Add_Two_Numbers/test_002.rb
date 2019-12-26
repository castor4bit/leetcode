require 'test/unit'
require './002'
require '../../structures/listnode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_002
    l1 = ListNodeUtil.array_to_listnode([2, 4, 3])
    l2 = ListNodeUtil.array_to_listnode([5, 6, 4])
    assert_equal [7,0,8], ListNodeUtil.listnode_to_array(add_two_numbers(l1, l2))
  end
end
