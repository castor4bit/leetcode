require 'test/unit'
require './405'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test405
    assert_equal "0", to_hex(0)
    assert_equal "1", to_hex(1)
    assert_equal "a", to_hex(10)
    assert_equal "f", to_hex(15)
    assert_equal "10", to_hex(16)
    assert_equal "1a", to_hex(26)
    assert_equal "ff", to_hex(255)
    assert_equal "7fffffff", to_hex(2147483647)
    assert_equal "80000000", to_hex(2147483648)

    assert_equal "ffffffff", to_hex(-1)
    assert_equal "ffff8001", to_hex(-32767)
    assert_equal "80000001", to_hex(-2147483647)
  end
end
