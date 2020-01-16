require 'test/unit'
require './078'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test078
    nums = [1, 2, 3]
    expected = (0..nums.size).reduce([]) {|a, b| a + nums.combination(b).to_a }
    assert_equal expected.sort, subsets([1, 2, 3]).sort
  end
end
