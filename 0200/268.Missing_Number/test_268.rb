require 'test/unit'
require './268'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_268
    assert_equal 2, missing_number([3, 0, 1])
    assert_equal 8, missing_number([9, 6, 4, 2, 3, 5, 7, 0, 1])

    input = (0..50000).to_a + [50002]
    assert_equal 50001, missing_number(input)
  end
end
