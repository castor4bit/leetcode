require 'test/unit'
require './5145'
require '../../../structures/treenode'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5145
    root = TreeNodeUtil.array_to_treenode([6, 7, 8, 2, 7, 1, 3, 9, nil, 1, 4, nil, nil, nil, 5])
    assert_equal 18, sum_even_grandparent(root)

    root = TreeNodeUtil.array_to_treenode([6, 7, 8])
    assert_equal 0, sum_even_grandparent(root)

    data = File.read("./data1.txt")
    root = TreeNodeUtil.array_to_treenode(eval(data))
    assert_equal 13955, sum_even_grandparent(root)
  end
end
