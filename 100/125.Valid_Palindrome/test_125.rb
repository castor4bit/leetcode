require 'test/unit'
require './125'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_125
    assert_equal true, is_palindrome("A man, a plan, a canal: Panama")
    assert_equal true, is_palindrome("")
    assert_equal true, is_palindrome("1a1")
    assert_equal false, is_palindrome("race a car")
  end
end

