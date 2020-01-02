require 'test/unit'
require './278'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_278
    def is_bad_version(n)
      n >= 4
    end
    assert_equal 4, first_bad_version(5)
    assert_equal 4, first_bad_version(5000000)
  end
end
