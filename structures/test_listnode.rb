require 'test/unit'
require './listnode'

class ListNodeTest < Test::Unit::TestCase
  def test_listnode
    node = ListNode.new(1)
    assert_equal 1, node.val
    assert_equal nil, node.next
  end
end

class ListNodeUtilTest < Test::Unit::TestCase
  def test_array_to_listnode
    node = ListNodeUtil.array_to_listnode([1])
    assert_equal 1, node.val
    assert_equal nil, node.next

    node = ListNodeUtil.array_to_listnode([1, 2])
    assert_equal 1, node.val
    assert_equal 2, node.next.val
    assert_equal nil, node.next.next

    node = ListNodeUtil.array_to_listnode([])
    assert_equal nil, node
  end

  def test_listnode_to_array
    node = ListNode.new(1)
    node.next = ListNode.new(2)
    assert_equal [1, 2], ListNodeUtil.listnode_to_array(node)

    node = nil
    assert_equal [], ListNodeUtil.listnode_to_array(node)
  end
end
