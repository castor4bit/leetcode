require 'test/unit'
require './345'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_345
    assert_equal "holle", reverse_vowels("hello")
    assert_equal "leotcede", reverse_vowels("leetcode")
    assert_equal "aA", reverse_vowels("Aa")

    assert_equal "", reverse_vowels("")
    assert_equal "aaa", reverse_vowels("aaa")
    assert_equal "auua", reverse_vowels("auua")
    assert_equal "z", reverse_vowels("z")
  end
end
