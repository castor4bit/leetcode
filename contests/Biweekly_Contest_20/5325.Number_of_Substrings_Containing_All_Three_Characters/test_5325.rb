require 'test/unit'
require './5325'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5325
    assert_equal 10, number_of_substrings("abcabc")
    assert_equal 3, number_of_substrings("aaacb")
    assert_equal 1, number_of_substrings("abc")
    assert_equal 3, number_of_substrings("ababbbc")
    assert_equal 11, number_of_substrings("acbbcac")
  end
end
