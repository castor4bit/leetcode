require 'test/unit'
require './292'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_292
    assert_equal true, can_win_nim(1)
    assert_equal false, can_win_nim(4)
  end
end
