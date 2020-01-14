require 'test/unit'
require './414'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test414
    assert_equal 1, third_max([3, 2, 1])
    assert_equal 2, third_max([1, 2])
    assert_equal 1, third_max([2, 2, 3, 1])
  end
end
