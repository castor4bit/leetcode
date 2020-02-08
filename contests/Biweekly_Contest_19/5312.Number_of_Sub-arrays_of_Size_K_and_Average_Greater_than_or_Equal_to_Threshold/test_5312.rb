require 'test/unit'
require './5312'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test5312
    arr = [2, 2, 2, 2, 5, 5, 5, 8]
    k = 3
    threshold = 4
    assert_equal 3, num_of_subarrays(arr, k, threshold)

    arr = [1, 1, 1, 1, 1]
    k = 1
    threshold = 0
    assert_equal 5, num_of_subarrays(arr, k, threshold)


    arr = [11, 13, 17, 23, 29, 31, 7, 5, 2, 3]
    k = 3
    threshold = 5
    assert_equal 6, num_of_subarrays(arr, k, threshold)

    arr = [7, 7, 7, 7, 7, 7, 7]
    k = 7
    threshold = 7
    assert_equal 1, num_of_subarrays(arr, k, threshold)

    arr = [4, 4, 4, 4]
    k = 4
    threshold = 1
    assert_equal 1, num_of_subarrays(arr, k, threshold)
  end
end
