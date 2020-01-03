require 'test/unit'
require './367'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_367
    assert_equal true, is_perfect_square(16)
    assert_equal false, is_perfect_square(14)

    assert_equal true, is_perfect_square(1)
    assert_equal false, is_perfect_square(2)
    assert_equal true, is_perfect_square(4)
    assert_equal true, is_perfect_square(4294836225)
    assert_equal false, is_perfect_square(4294836224)
  end
end
