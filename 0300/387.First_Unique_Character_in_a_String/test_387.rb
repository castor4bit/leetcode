require 'test/unit'
require './387'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_387
    assert_equal 0, first_uniq_char("leetcode")
    assert_equal 2, first_uniq_char("loveleetcode")
    assert_equal -1, first_uniq_char("aabbcc")
    assert_equal -1, first_uniq_char("")
  end
end
