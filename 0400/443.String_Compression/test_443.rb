require 'test/unit'
require './443'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test443
    assert_equal 6, compress(%w[a a b b c c c])
    assert_equal 1, compress(["a"])
    assert_equal 4, compress(%w[a b b b b b b b b b b b b])
  end
end
