require 'test/unit'
require './nary_treenode'

class NaryTreeNodeTest < Test::Unit::TestCase
  def test_narytreenode
    node = NaryTreeNode.new(1)
    assert_equal 1, node.val
    assert_equal [], node.children
  end
end

class NaryTreeNodeUtilTest < Test::Unit::TestCase
  def test_array_to_treenode
    head = NaryTreeNodeUtil.array_to_treenode([1, nil, 2, 3, 4])
    assert_equal 1, head.val
    assert_equal 2, head.children[0].val
    assert_equal 3, head.children[1].val
    assert_equal 4, head.children[2].val

    head = NaryTreeNodeUtil.array_to_treenode([1, nil, 2, 3, 4, 5, nil, nil, 6, 7, nil, 8, nil, 9, 10, nil, nil, 11, nil, 12, nil, 13, nil, nil, 14])
    assert_equal 1, head.val
    assert_equal 4, head.children.size
    assert_equal 4, head.children[2].val
    assert_equal 2, head.children[3].children.size
    assert_equal 13, head.children[3].children[0].children[0].val
  end
end
