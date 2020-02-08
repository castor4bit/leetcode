require 'test/unit'
require './5311'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test5311
    assert_equal 6, number_of_steps(14)
    assert_equal 4, number_of_steps(8)
    assert_equal 12, number_of_steps(123)
  end
end
