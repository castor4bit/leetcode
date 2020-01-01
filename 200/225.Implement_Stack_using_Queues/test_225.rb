require 'test/unit'
require './225'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_225
    stack = MyStack.new
    stack.push(1)
    stack.push(2)

    assert_equal 2, stack.top
    assert_equal 2, stack.pop

    assert_equal false, stack.empty

    assert_equal 1, stack.pop
    assert_equal true, stack.empty
  end
end
