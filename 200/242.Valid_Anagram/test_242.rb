require 'test/unit'
require './242'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_242
    assert_equal true, is_anagram("anagram", "nagaram")
    assert_equal false, is_anagram("rat", "cat")
    assert_equal true, is_anagram("いきものがかり", "のもがかいりき")
  end
end
