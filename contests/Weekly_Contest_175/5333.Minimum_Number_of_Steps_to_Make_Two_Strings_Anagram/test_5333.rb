require 'test/unit'
require './5333'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test5333
    assert_equal 1, min_steps("bab", "aba")
    assert_equal 5, min_steps("leetcode", "practice")
    assert_equal 0, min_steps("anagram", "mangaar")
    assert_equal 0, min_steps("xxyyzz", "xxyyzz")
    assert_equal 4, min_steps("friend", "family")
  end
end
