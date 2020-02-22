require 'test/unit'
require './5323'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5323
    assert_equal [0, 1, 2, 4, 8, 3, 5, 6, 7], sort_by_bits([0, 1, 2, 3, 4, 5, 6, 7, 8])
    assert_equal [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024], sort_by_bits([1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1])
    assert_equal [10000, 10000], sort_by_bits([10000, 10000])
    assert_equal [2, 3, 5, 17, 7, 11, 13, 19], sort_by_bits([2, 3, 5, 7, 11, 13, 17, 19])
    assert_equal [10, 100, 10000, 1000], sort_by_bits([10, 100, 1000, 10000])
  end
end
