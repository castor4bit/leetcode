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
def add_two_numbers(l1, l2)

  def listnode_to_number(node)
    s = 0
    0.step do |i|
      break if node.nil?
      s += node.val * 10 ** i
      node = node.next
    end

    s
  end

  def number_to_listnode(n)
    head = ListNode.new(n % 10)
    node = head
    while n >= 10
      n = n / 10
      node.next = ListNode.new(n % 10)
      node = node.next
    end

    head
  end

  number_to_listnode(listnode_to_number(l1) + listnode_to_number(l2))
end
