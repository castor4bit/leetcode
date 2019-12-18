# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  vals = []

  while !l1.nil? do
    vals.push(l1.val)
    l1 = l1.next
  end
  while !l2.nil? do
    vals.push(l2.val)
    l2 = l2.next
  end

  vals.sort!.reverse!

  result = nil
  vals.each do |v|
    node = ListNode.new(v)
    node.next = result
    result = node
  end

  result
end
