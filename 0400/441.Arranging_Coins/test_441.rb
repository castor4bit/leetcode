require 'test/unit'
require './441'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test441
    assert_equal 0, arrange_coins(0)
    assert_equal 2, arrange_coins(5)
    assert_equal 3, arrange_coins(8)
  end
end
