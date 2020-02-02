require 'test/unit'
require './5329'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5329
    arr = [3, 3, 3, 3, 5, 5, 5, 2, 2, 7]
    assert_equal 2, min_set_size(arr)

    arr = [7, 7, 7, 7, 7, 7]
    assert_equal 1, min_set_size(arr)

    arr = [1, 9]
    assert_equal 1, min_set_size(arr)

    arr = [1000, 1000, 3, 7]
    assert_equal 1, min_set_size(arr)

    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    assert_equal 5, min_set_size(arr)

    arr = [9, 77, 63, 22, 92, 9, 14, 54, 8, 38, 18, 19, 38, 68, 58, 19]
    assert_equal 5, min_set_size(arr)
  end
end
