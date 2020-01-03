require 'test/unit'
require './383'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_383
    assert_equal false, can_construct("a", "b")
    assert_equal false, can_construct("aa", "ab")
    assert_equal true, can_construct("aa", "aab")

    assert_equal true, can_construct("", "")
    assert_equal true, can_construct("aabcd", "eeddccbbaa")
  end
end
