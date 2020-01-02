# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  values = []
  until head.nil?
    values.push(head.val)
    head = head.next
  end

  values == values.reverse
end
