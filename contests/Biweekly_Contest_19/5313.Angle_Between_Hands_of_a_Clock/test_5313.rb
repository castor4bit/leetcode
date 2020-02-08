require 'test/unit'
require './5313'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test5313
    assert_equal 165, angle_clock(12, 30)
    assert_equal 75, angle_clock(3, 30)
    assert_equal 7.5, angle_clock(3, 15)
    assert_equal 155, angle_clock(4, 50)
    assert_equal 65, angle_clock(4, 10)
    assert_equal 0, angle_clock(12, 0)
    assert_equal 76.5, angle_clock(1, 57)
  end
end
