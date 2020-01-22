require 'test/unit'
require './447'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test447
    assert_equal 2, number_of_boomerangs([[0,0],[1,0],[2,0]])
    assert_equal 8, number_of_boomerangs([[0,0],[1,0],[1,0],[2,0]])
  end
end
