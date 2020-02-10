require 'test/unit'
require './005'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test005
    assert_includes ["bab", "aba"], longest_palindrome("babad")
    assert_equal "bb", longest_palindrome("cbbd")
    assert_equal "a", longest_palindrome("a")
    assert_equal "", longest_palindrome("")
  end
end
