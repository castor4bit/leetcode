require 'test/unit'
require './566'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test566
    assert_equal [[1, 2, 3, 4]], matrix_reshape([[1, 2], [3, 4]], 1, 4)
    assert_equal [[1, 2], [3, 4]], matrix_reshape([[1, 2], [3, 4]], 2, 4)
  end
end
