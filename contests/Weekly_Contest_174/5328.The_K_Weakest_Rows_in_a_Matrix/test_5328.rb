require 'test/unit'
require './5328'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5328
    mat =
      [[1, 1, 0, 0, 0],
       [1, 1, 1, 1, 0],
       [1, 0, 0, 0, 0],
       [1, 1, 0, 0, 0],
       [1, 1, 1, 1, 1]]
    k = 3
    assert_equal [2, 0, 3], k_weakest_rows(mat, k)

    mat =
      [[1, 0, 0, 0],
       [1, 1, 1, 1],
       [1, 0, 0, 0],
       [1, 0, 0, 0]]
    k = 2
    assert_equal [0, 2], k_weakest_rows(mat, k)

    mat = [[1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]]
    k = 1
    assert_equal [0], k_weakest_rows(mat, k)
  end
end
