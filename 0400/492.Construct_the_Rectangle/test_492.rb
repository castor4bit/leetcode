require 'test/unit'
require './492'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_492
    assert_equal [2, 2], construct_rectangle(4)
  end
end
