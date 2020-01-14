require 'test/unit'
require './415'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test415
    assert_equal "123", add_strings("55", "68")
    assert_equal "0", add_strings("0", "0")

    num1 = "".rjust(5100, "9")
    num2 = "".rjust(5100, "9")
    expected = (num1.to_i + num2.to_i).to_s
    assert_equal expected, add_strings(num1, num2)
  end
end
