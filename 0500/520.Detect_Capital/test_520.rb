require 'test/unit'
require './520'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test520
    assert_equal true, detect_capital_use("USA")
    assert_equal true, detect_capital_use("Google")
    assert_equal true, detect_capital_use("leetcode")
    assert_equal false, detect_capital_use("FlaG")
    assert_equal false, detect_capital_use("FFFFf")
  end
end
