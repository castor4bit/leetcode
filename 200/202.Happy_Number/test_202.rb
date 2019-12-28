require 'test/unit'
require './202'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_202
    assert_equal true, is_happy(1)
    assert_equal false, is_happy(2)
    assert_equal true, is_happy(19)
  end
end
