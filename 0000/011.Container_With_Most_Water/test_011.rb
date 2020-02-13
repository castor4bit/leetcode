require 'test/unit'
require './011'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test011
    assert_equal 49, max_area([1, 8, 6, 2, 5, 4, 8, 3, 7])
  end
end
