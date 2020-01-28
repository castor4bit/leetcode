require 'test/unit'
require './461'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test461
    assert_equal 2, hamming_distance(1, 4)
    assert_equal 16, hamming_distance(0xaaaa, 0x5555)
    assert_equal 0, hamming_distance(0xaaaa, 0xaaaa)
  end
end
