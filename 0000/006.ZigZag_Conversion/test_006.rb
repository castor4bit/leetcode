require 'test/unit'
require './006'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test006
    assert_equal "PAHNAPLSIIGYIR", convert("PAYPALISHIRING", 3)
    assert_equal "PINALSIGYAHRPI", convert("PAYPALISHIRING", 4)
  end
end
