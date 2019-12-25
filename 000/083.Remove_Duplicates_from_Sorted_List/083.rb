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
def delete_duplicates(head)
  return head if head.nil?

  node = head
  while !node.next.nil? do
    if node.val == node.next.val then
      node.next = node.next.next
    else
      node = node.next
    end
  end

  head
end
