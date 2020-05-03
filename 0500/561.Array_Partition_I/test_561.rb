require 'test/unit'
require './561'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test561
    assert_equal 4, array_pair_sum([1, 4, 3, 2])
  end
end
