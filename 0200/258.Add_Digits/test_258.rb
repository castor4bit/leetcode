require 'test/unit'
require './258'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_258
    assert_equal 2, add_digits(38)
    assert_equal 1, add_digits(1111111111)
  end
end
