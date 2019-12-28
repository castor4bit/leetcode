require 'test/unit'
require './198'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_198
    assert_equal 0, rob([])
    assert_equal 1, rob([1])
    assert_equal 3, rob([1, 3])
    assert_equal 3, rob([3, 1])
    assert_equal 4, rob([1, 2, 3, 1])
    assert_equal 12, rob([2, 7, 9, 3, 1])

    input = (1..22).to_a
    assert_equal 132, rob(input)

    input = [183,219,57,193,94,233,202,154,65,240,97,234,100,249,186,66,90,238,168,128,177,235,50,81,185,165,217,207,88,80,112,78,135,62,228,247,211]
    assert_equal 3365, rob(input)
  end
end
