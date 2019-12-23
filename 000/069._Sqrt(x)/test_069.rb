require 'test/unit'
require './069'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_069
    assert_equal 2, my_sqrt(4)
    assert_equal 2, my_sqrt(8)
    assert_equal 3, my_sqrt(9)
    assert_equal 0, my_sqrt(0)
  end
end
