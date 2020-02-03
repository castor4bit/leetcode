require 'test/unit'
require './5330'
require '../../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5330
    root = TreeNodeUtil.array_to_treenode([1, 2, 3, 4, 5, 6])
    assert_equal 110, max_product(root)

    root = TreeNodeUtil.array_to_treenode([1, nil, 2, 3, 4, nil, nil, 5, 6])
    assert_equal 90, max_product(root)

    root = TreeNodeUtil.array_to_treenode([2, 3, 9, 10, 7, 8, 6, 5, 4, 11, 1])
    assert_equal 1025, max_product(root)

    root = TreeNodeUtil.array_to_treenode([1, 1])
    assert_equal 1, max_product(root)

    # RUBY_THREAD_VM_STACK_SIZE=8388608 (8KB)
    data = eval(File.read('./data1.txt'))
    root = TreeNodeUtil.array_to_treenode(data)
    assert_equal 757667725, max_product(root)
  end
end
