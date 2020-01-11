require 'test/unit'
require './5144'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5144
    mat = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    k = 1
    assert_equal [[12, 21, 16], [27, 45, 33], [24, 39, 28]], matrix_block_sum(mat, k)

    mat = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    k = 2
    assert_equal [[45, 45, 45], [45, 45, 45], [45, 45, 45]], matrix_block_sum(mat, k)
  end
end
