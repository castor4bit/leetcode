require 'test/unit'
require './5331'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5331
    arr = [6, 4, 14, 6, 8, 13, 9, 7, 10, 6, 12]
    d = 2
    assert_equal 4, max_jumps(arr, d)

    arr = [3, 3, 3, 3, 3]
    d = 3
    assert_equal 1, max_jumps(arr, d)

    arr = [7, 6, 5, 4, 3, 2, 1]
    d = 1
    assert_equal 7, max_jumps(arr, d)

    arr = [7, 1, 7, 1, 7, 1]
    d = 2
    assert_equal 2, max_jumps(arr, d)

    arr = [66]
    d = 1
    assert_equal 1, max_jumps(arr, d)
  end
end
