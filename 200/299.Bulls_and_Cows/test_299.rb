require 'test/unit'
require './299'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_299
    assert_equal "1A3B", get_hint("1807", "7810")
    assert_equal "1A1B", get_hint("1123", "0111")
    assert_equal "0A1B", get_hint("1122", "0001")
    assert_equal "0A4B", get_hint("1122", "2211")

    secret = "9" + "".rjust(50000, "1")
    guess = "".rjust(49999, "0") + "19"
    assert_equal "1A1B", get_hint(secret, guess)
  end
end
