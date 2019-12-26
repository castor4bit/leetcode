class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

class ListNodeUtil
  def self.array_to_listnode(a)
    head = node = nil
    a.reverse.each do |v|
      node = ListNode.new(v)
      node.next = head
      head = node
    end

    head
  end

  def self.listnode_to_array(node)
    a = []
    while !node.nil? do
      a.push(node.val)
      node = node.next
    end

    a
  end
end
