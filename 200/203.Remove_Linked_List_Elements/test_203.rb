require 'test/unit'
require './203'
require '../../structures/listnode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_203
    head = ListNodeUtil.array_to_listnode([1, 2, 6, 3, 4, 5, 6])
    assert_equal [1, 2, 3, 4, 5], ListNodeUtil.listnode_to_array(remove_elements(head, 6))

    head = ListNodeUtil.array_to_listnode([])
    assert_equal [], ListNodeUtil.listnode_to_array(remove_elements(head, 6))

    head = ListNodeUtil.array_to_listnode([1, 2, 3])
    assert_equal [1, 2, 3], ListNodeUtil.listnode_to_array(remove_elements(head, 6))

    head = ListNodeUtil.array_to_listnode([6, 6])
    assert_equal [], ListNodeUtil.listnode_to_array(remove_elements(head, 6))

    head = ListNodeUtil.array_to_listnode([1, 2])
    assert_equal [2], ListNodeUtil.listnode_to_array(remove_elements(head, 1))
  end
end
