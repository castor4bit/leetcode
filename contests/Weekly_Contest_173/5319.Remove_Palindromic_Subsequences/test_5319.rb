require 'test/unit'
require './5319'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5319
    assert_equal 1, remove_palindrome_sub("ababa")
    assert_equal 2, remove_palindrome_sub("abb")
    assert_equal 2, remove_palindrome_sub("baabb")
    assert_equal 2, remove_palindrome_sub("abaaa")
    assert_equal 0, remove_palindrome_sub("")
    assert_equal 2, remove_palindrome_sub("abbbaaaabba")
    assert_equal 2, remove_palindrome_sub("bbaabaaa")
  end
end
