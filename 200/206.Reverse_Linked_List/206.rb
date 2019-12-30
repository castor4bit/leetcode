# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return nil if head.nil?

  stack = []
  while !head.nil? do
    stack.push(head.val)
    head = head.next
  end

  node = nil
  for i in stack
    head = ListNode.new(i)
    head.next = node
    node = head
  end

  head
end
