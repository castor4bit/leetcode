require 'test/unit'
require './389'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_389
    assert_equal 'e', find_the_difference("abcd", "abcde")
    assert_equal 'e', find_the_difference("abcd", "eabcd")
    assert_equal 'e', find_the_difference("abcd", "abecd")

    10.times do
      s = Array.new(50000).map { rand(97..121).chr }.join
      t = s.dup.chars.shuffle.join
      t.insert(rand(s.size), 'z')
      assert_equal 'z', find_the_difference(s, t)
    end
  end
end
