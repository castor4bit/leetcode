require 'test/unit'
require './219'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_219
    assert_equal true, contains_nearby_duplicate([1, 2, 3, 1], 3)
    assert_equal true, contains_nearby_duplicate([1, 0, 1, 1], 1)
    assert_equal false, contains_nearby_duplicate([1, 2, 3, 1, 2, 3], 2)
    assert_equal true, contains_nearby_duplicate([99, 99], 2)

    input = (-24500..24999).to_a
    assert_equal false, contains_nearby_duplicate(input, 35000)
  end
end
