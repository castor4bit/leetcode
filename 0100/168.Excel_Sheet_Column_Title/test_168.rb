require 'test/unit'
require './168'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_168
    assert_equal "A", convert_to_title(1)
    assert_equal "B", convert_to_title(2)
    assert_equal "Z", convert_to_title(26)
    assert_equal "AA", convert_to_title(27)
    assert_equal "AB", convert_to_title(28)
    assert_equal "AZ", convert_to_title(26 * 2)
    assert_equal "BA", convert_to_title(26 * 2 + 1)
    assert_equal "BZ", convert_to_title(26 * 3)
    assert_equal "YZ", convert_to_title(26 * 26)
    assert_equal "ZA", convert_to_title(26 * 26 + 1)
    assert_equal "ZZ", convert_to_title(26 * 27)
    assert_equal "ZY", convert_to_title(701)
  end
end

