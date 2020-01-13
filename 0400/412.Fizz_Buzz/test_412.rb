require 'test/unit'
require './412'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test412
    expected = [
      "1",
      "2",
      "Fizz",
      "4",
      "Buzz",
      "Fizz",
      "7",
      "8",
      "Fizz",
      "Buzz",
      "11",
      "Fizz",
      "13",
      "14",
      "FizzBuzz"
    ]
    assert_equal expected, fizz_buzz(15)
  end
end
