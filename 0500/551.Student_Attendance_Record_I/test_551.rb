require 'test/unit'
require './551'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test551
    assert_equal true, check_record("PPALLP")
    assert_equal false, check_record("PPALLL")
    assert_equal true, check_record("")
    assert_equal true, check_record("A")
  end
end
