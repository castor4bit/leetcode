require 'test/unit'
require './206'
require '../../structures/listnode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_206
    input = ListNodeUtil.array_to_listnode([1, 2, 3, 4, 5])
    assert_equal [5, 4, 3, 2, 1], ListNodeUtil.listnode_to_array(reverse_list(input))

    assert_equal nil, reverse_list(nil)
  end
end
