require 'test/unit'
require './083'
require '../../structures/listnode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_083
    head = ListNodeUtil.array_to_listnode([1, 1, 2])
    assert_equal [1, 2], ListNodeUtil.listnode_to_array(delete_duplicates(head))

    head = ListNodeUtil.array_to_listnode([1, 1, 2, 3, 3])
    assert_equal [1, 2, 3], ListNodeUtil.listnode_to_array(delete_duplicates(head))

    head = ListNodeUtil.array_to_listnode([])
    assert_equal [], ListNodeUtil.listnode_to_array(delete_duplicates(head))
  end
end
