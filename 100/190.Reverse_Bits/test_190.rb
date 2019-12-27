require 'test/unit'
require './190'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_190
    assert_equal 964176192, reverse_bits(43261596)
    assert_equal 3221225471, reverse_bits(4294967293)
  end
end
