require 'test/unit'
require './5295'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5295
    n = 5
    assert_equal 0, sum_zero(n).sum
    assert_equal true, sum_zero(n).size == sum_zero(n).uniq.size

    n = 3
    assert_equal 0, sum_zero(n).sum
    assert_equal true, sum_zero(n).size == sum_zero(n).uniq.size

    n = 1
    assert_equal 0, sum_zero(n).sum
    assert_equal true, sum_zero(n).size == sum_zero(n).uniq.size

    n = 1000
    assert_equal 0, sum_zero(n).sum
    assert_equal true, sum_zero(n).size == sum_zero(n).uniq.size
  end
end

