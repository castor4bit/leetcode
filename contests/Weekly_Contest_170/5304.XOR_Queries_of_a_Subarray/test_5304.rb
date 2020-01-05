require 'test/unit'
require './5304'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5304
    arr = [1, 3, 4, 8]
    queries = [[0, 1], [1, 2], [0, 3], [3, 3]]
    assert_equal [2, 7, 14, 8], xor_queries(arr, queries)

    arr = [4, 8, 2, 10]
    queries = [[2, 3], [1, 3], [0, 0], [0, 3]]
    assert_equal [8, 0, 4, 4], xor_queries(arr, queries)
  end
end
