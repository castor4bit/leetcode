require 'test/unit'
require './232'

class LeetCodeSolutionTest < Test::Unit::TestCase
  def test_232
    queue = MyQueue.new

    queue.push(1)
    queue.push(2)

    assert_equal 1, queue.peek
    assert_equal 1, queue.pop
    assert_equal false, queue.empty

    assert_equal 2, queue.pop
    assert_equal true, queue.empty
  end
end
