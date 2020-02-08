require 'test/unit'
require './003'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test003
    assert_equal 3, length_of_longest_substring("abcabcbb")
    assert_equal 1, length_of_longest_substring("bbbbb")
    assert_equal 3, length_of_longest_substring("pwwkew")
  end
end
