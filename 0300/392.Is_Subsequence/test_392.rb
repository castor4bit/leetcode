require 'test/unit'
require './392'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_392
    assert_equal true, is_subsequence("abc", "ahbgdc")
    assert_equal false, is_subsequence("axc", "ahbgdc")
  end
end
