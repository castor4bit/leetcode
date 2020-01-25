require 'test/unit'
require './5151'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test5151
    assert_equal "", break_palindrome("a")
    assert_equal "ab", break_palindrome("aa")
    assert_equal "aab", break_palindrome("aaa")
    assert_equal "aab", break_palindrome("bab")
    assert_equal "abb", break_palindrome("aba")
    assert_equal "azzz", break_palindrome("zzzz")
    assert_equal "aaccba", break_palindrome("abccba")
  end
end
