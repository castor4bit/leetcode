require 'test/unit'
require './008'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test008
    assert_equal 42, my_atoi("42")
    assert_equal -42, my_atoi("   -42")
    assert_equal 4193, my_atoi("4193 with words")
    assert_equal 0, my_atoi("words and 987")
    assert_equal -2147483648, my_atoi("-91283472332")
    assert_equal 1, my_atoi("+1")
  end
end
