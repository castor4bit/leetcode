# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  node = head
  while !node.nil? do
    break if node.next.nil?

    if node.next.val == val then
      node.next = node.next.next
    else
      node = node.next
    end
  end

  while !head.nil? and head.val == val do
    head = head.next
  end

  head
end
