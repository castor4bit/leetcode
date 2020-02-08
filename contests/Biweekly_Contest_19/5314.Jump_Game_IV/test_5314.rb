require 'test/unit'
require './5314'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test5314
    assert_equal 3, min_jumps([100, -23, -23, 404, 100, 23, 23, 23, 3, 404])
    assert_equal 0, min_jumps([7])
    assert_equal 1, min_jumps([7, 6, 9, 6, 9, 6, 9, 7])
    assert_equal 2, min_jumps([6, 1, 9])
    assert_equal 3, min_jumps([11, 22, 7, 7, 7, 7, 7, 7, 7, 22, 13])

    arr = eval(File.read('./data1.txt'))
    assert_equal 9, min_jumps(arr)

    arr = eval(File.read('./data2.txt'))
    assert_equal 2, min_jumps(arr)
  end
end
