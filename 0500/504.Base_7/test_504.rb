require 'test/unit'
require './504'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test504
    assert_equal "202", convert_to_base7(100)
    assert_equal "-10", convert_to_base7(-7)
  end
end
