require 'test/unit'
require './5315'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5315
    assert_equal 9969, maximum69_number(9669)
    assert_equal 9999, maximum69_number(9996)
    assert_equal 9999, maximum69_number(9999)
    assert_equal 9666, maximum69_number(6666)
  end
end
