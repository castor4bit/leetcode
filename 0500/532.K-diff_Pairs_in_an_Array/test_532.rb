require 'test/unit'
require './532'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test532
    assert_equal 2, find_pairs([3, 1, 4, 1, 5], 2)
    assert_equal 4, find_pairs([1, 2, 3, 4, 5], 1)
    assert_equal 1, find_pairs([1, 3, 1, 5, 4], 0)
  end
end
