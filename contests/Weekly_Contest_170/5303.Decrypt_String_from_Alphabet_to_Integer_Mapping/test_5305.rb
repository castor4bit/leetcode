require 'test/unit'
require './5303'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5303
    assert_equal "jkab", freq_alphabets("10#11#12")
    assert_equal "acz", freq_alphabets("1326#")
    assert_equal "y", freq_alphabets("25#")
    assert_equal "abcdefghijklmnopqrstuvwxyz", freq_alphabets("12345678910#11#12#13#14#15#16#17#18#19#20#21#22#23#24#25#26#")
  end
end
