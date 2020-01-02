require 'test/unit'
require './155'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_155
    min_stack = MinStack.new()
    min_stack.push(-2);
    min_stack.push(0);
    min_stack.push(-3);

    assert_equal -3, min_stack.get_min()

    min_stack.pop();
    assert_equal 0, min_stack.top()
    assert_equal -2, min_stack.get_min()

    min_stack = MinStack.new()
    assert_equal nil, min_stack.get_min()
    assert_equal nil, min_stack.top()
  end
end
