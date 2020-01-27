require 'test/unit'
require './459'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test459
    assert_equal true, repeated_substring_pattern("abab")
    assert_equal false, repeated_substring_pattern("aba")
    assert_equal true, repeated_substring_pattern("abcabcabcabc")
    assert_equal false, repeated_substring_pattern("")
    assert_equal true, repeated_substring_pattern("a" * 10000)
  end
end
