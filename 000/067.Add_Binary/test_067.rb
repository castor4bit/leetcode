require 'test/unit'
require './067'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_067
    assert_equal "100", add_binary("11", "1")
    assert_equal "10101", add_binary("1010", "1011")
  end
end
