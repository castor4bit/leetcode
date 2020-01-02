require 'test/unit'
require './191'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_191
    assert_equal 3, hamming_weight("00000000000000000000000000001011".to_i(2))
    assert_equal 1, hamming_weight("00000000000000000000000010000000".to_i(2))
    assert_equal 31, hamming_weight("11111111111111111111111111111101".to_i(2))
  end
end
