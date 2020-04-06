require 'test/unit'
require './509'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test509
    assert_equal 0, fib(0)
    assert_equal 1, fib(2)
    assert_equal 2, fib(3)
    assert_equal 832040, fib(30)
  end
end
