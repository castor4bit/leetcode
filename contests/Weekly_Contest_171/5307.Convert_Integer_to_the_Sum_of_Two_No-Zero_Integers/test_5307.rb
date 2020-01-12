require 'test/unit'
require './5307'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_5307
    n = 2
    result = get_no_zero_integers(n)
    assert_equal n, result.sum
    assert_equal false, result.map(&:to_s).join.match?(/0/)

    n = 11
    result = get_no_zero_integers(n)
    assert_equal n, result.sum
    assert_equal false, result.map(&:to_s).join.match?(/0/)

    n = 10000
    result = get_no_zero_integers(n)
    assert_equal n, result.sum
    assert_equal false, result.map(&:to_s).join.match?(/0/)

    n = 69
    result = get_no_zero_integers(n)
    assert_equal n, result.sum
    assert_equal false, result.map(&:to_s).join.match?(/0/)

    n = 1010
    result = get_no_zero_integers(n)
    assert_equal n, result.sum
    assert_equal false, result.map(&:to_s).join.match?(/0/)
  end
end
