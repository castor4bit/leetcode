class NaryTreeNode
  attr_accessor :val, :children
  def initialize(val)
    @val = val
    @children = []
  end
end

class NaryTreeNodeUtil
  def self.array_to_treenode(a)
    return nil if a.empty?

    root = NaryTreeNode.new(a.shift)
    q = [root]
    a.shift

    until q.empty?
      node = q.shift

      child = nil
      children = []
      children.push(child) while child = a.shift

      children.each do |value|
        _node = NaryTreeNode.new(value)
        node.children.push(_node)
        q.push(_node)
      end
    end

    root
  end
end

