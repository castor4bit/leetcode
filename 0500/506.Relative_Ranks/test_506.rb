require 'test/unit'
require './506'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test506
    assert_equal ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"], find_relative_ranks([5, 4, 3, 2, 1])
    assert_equal ["Gold Medal", "5", "Bronze Medal", "Silver Medal", "4"], find_relative_ranks([10, 3, 8, 9, 4])
  end
end
