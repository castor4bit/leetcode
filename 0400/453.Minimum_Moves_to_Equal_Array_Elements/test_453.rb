require 'test/unit'
require './453'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test453
    assert_equal 3, min_moves([1, 2, 3])
    assert_equal 10, min_moves([1, 2, 10])
    assert_equal 8, min_moves([-5, -4, -3, 0])
    assert_equal 15343, min_moves([1, 2, 4, 50, 43, 546, 6437, -324, -435, 4234, 0])
    assert_equal 2147483646, min_moves([1, 2147483647])

    nums = eval(File.read('./data1.txt'))
    assert_equal 101895, min_moves(nums)

    nums = eval(File.read('./data2.txt'))
    assert_equal 5009418, min_moves(nums)

    nums = eval(File.read('./data3.txt'))
    assert_equal 4986353, min_moves(nums)
  end
end
