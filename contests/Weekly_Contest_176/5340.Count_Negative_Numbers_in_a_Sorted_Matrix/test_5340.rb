require 'test/unit'
require './5340'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test5340
    assert_equal 8, count_negatives([[4, 3, 2, -1], [3, 2, 1, -1], [1, 1, -1, -2], [-1, -1, -2, -3]])
    assert_equal 0, count_negatives([[3, 2], [1, 0]])
    assert_equal 3, count_negatives([[1, -1], [-1, -1]])
    assert_equal 1, count_negatives([[-1]])
    assert_equal 0, count_negatives([[0]])
  end
end
