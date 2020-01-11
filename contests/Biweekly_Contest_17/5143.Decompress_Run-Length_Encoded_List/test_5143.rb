require 'test/unit'
require './5143'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5143
    assert_equal [2, 4, 4, 4], decompress_rl_elist([1, 2, 3, 4])
  end
end
