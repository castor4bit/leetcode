class MyQueue
  #     Initialize your data structure here.
  def initialize
    @stack = []
  end

  #     Push element x to the back of queue.
  #     :type x: Integer
  #     :rtype: Void
  def push(x)
    @stack.push(x)
  end

  #     Removes the element from in front of queue and returns that element.
  #     :rtype: Integer
  def pop
    @stack.shift
  end

  #     Get the front element.
  #     :rtype: Integer
  def peek
    @stack[0]
  end

  #     Returns whether the queue is empty.
  #     :rtype: Boolean
  def empty
    @stack.empty?
  end
end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
