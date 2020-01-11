require 'test/unit'
require './409'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test409
    assert_equal 7, longest_palindrome("abccccdd")
    assert_equal 1, longest_palindrome("abc")
    assert_equal 0, longest_palindrome("")
    assert_equal 3, longest_palindrome("aaa")
    assert_equal 2, longest_palindrome("aa")
  end
end
