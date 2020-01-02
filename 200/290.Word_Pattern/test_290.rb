require 'test/unit'
require './290'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_290
    pattern = "abba"
    str = "dog cat cat dog"
    assert_equal true, word_pattern(pattern, str)

    pattern = "abba"
    str = "dog cat cat fish"
    assert_equal false, word_pattern(pattern, str)

    pattern = "aaaa"
    str = "dog cat cat dog"
    assert_equal false, word_pattern(pattern, str)

    pattern = "abba"
    str = "dog dog dog dog"
    assert_equal false, word_pattern(pattern, str)

    pattern = "aaa"
    str = "aa aa aa aa"
    assert_equal false, word_pattern(pattern, str)
  end
end
