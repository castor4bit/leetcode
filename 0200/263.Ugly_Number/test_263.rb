require 'test/unit'
require './263'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_263
    assert_equal true, is_ugly(6)
    assert_equal true, is_ugly(8)
    assert_equal false, is_ugly(14)
    assert_equal true, is_ugly(121500000)

    assert_equal true, is_ugly(1)
    assert_equal false, is_ugly(0)
    assert_equal false, is_ugly(-6)
  end
end

