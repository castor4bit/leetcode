require 'test/unit'
require './070'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_070
    assert_equal 1, climb_stairs(1)
    assert_equal 2, climb_stairs(2)
    assert_equal 3, climb_stairs(3)
    assert_equal 21, climb_stairs(7)
    assert_equal 55, climb_stairs(9)
  end

  def test_fact
    assert_equal 1, fact(0)
    assert_equal 1, fact(1)
    assert_equal 2, fact(2)
    assert_equal 6, fact(3)
    assert_equal 24, fact(4)
  end
end
