require 'test/unit'
require './237'
require '../../structures/listnode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_237
    head = ListNodeUtil.array_to_listnode([4, 5, 1, 9])
    node = head
    node = node.next until node.val == 5
    delete_node(node)
    assert_equal [4, 1, 9], ListNodeUtil.listnode_to_array(head)

    head = ListNodeUtil.array_to_listnode([4, 5, 1, 9])
    node = head
    node = node.next until node.val == 1
    delete_node(node)
    assert_equal [4, 5, 9], ListNodeUtil.listnode_to_array(head)

    head = ListNodeUtil.array_to_listnode([1, 2])
    node = head
    node = node.next until node.val == 1
    delete_node(node)
    assert_equal [2], ListNodeUtil.listnode_to_array(head)
  end
end
