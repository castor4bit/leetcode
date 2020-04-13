require 'test/unit'
require './541'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test541
    assert_equal "bacdfeg", reverse_str("abcdefg", 2)
  end
end
