require 'test/unit'
require './198'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_198
    assert_equal 4, rob([1, 2, 3, 1])
    assert_equal 12, rob([2, 7, 9, 3, 1])

    input = (1..22).to_a
    assert_equal 132, rob(input)
  end
end
