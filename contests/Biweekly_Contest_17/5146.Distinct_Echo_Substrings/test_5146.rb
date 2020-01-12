require 'test/unit'
require './5146'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5146
    assert_equal 3, distinct_echo_substrings("abcabcabc")
    assert_equal 2, distinct_echo_substrings("leetcodeleetcode")
  end
end
