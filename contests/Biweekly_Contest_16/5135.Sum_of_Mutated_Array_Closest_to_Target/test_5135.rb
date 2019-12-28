require 'test/unit'
require './5135'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5135
    arr = [4,9,3]
    target = 10
    assert_equal 3, find_best_value(arr, target)

    arr = [2,3,5]
    target = 10
    assert_equal 5, find_best_value(arr, target)

    arr = [60864,25176,27249,21296,20204]
    target = 56803
    assert_equal 11361, find_best_value(arr, target)

    arr = Array.new(10000, 5)
    target = 46000
    assert_equal 5, find_best_value(arr, target)

    arr = Array.new(10000, 5)
    target = 45000
    assert_equal 4, find_best_value(arr, target)

    arr = [1]
    target = 10
    assert_equal 10, find_best_value(arr, target)

    arr = [10]
    target = 1
    assert_equal 0, find_best_value(arr, target)

    arr = [1547,83230,57084,93444,70879]
    target = 71237
    assert_equal 17422, find_best_value(arr, target)
  end
end
