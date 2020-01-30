require 'test/unit'
require './476'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test476
    assert_equal 2, find_complement(5)
    assert_equal 0, find_complement(1)
    assert_equal 1, find_complement(0)
  end
end
