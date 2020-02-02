class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

class TreeNodeUtil
  def self.array_to_treenode(a)
    return nil if a.empty?

    root = TreeNode.new(a.shift)
    q = [root]

    until q.empty?
      node = q.shift

      left = a.shift
      right = a.shift

      unless left.nil?
        node.left = TreeNode.new(left)
        q.push(node.left)
      end
      unless right.nil?
        node.right = TreeNode.new(right)
        q.push(node.right)
      end
    end

    root
  end

  def self.treenode_to_array(node)
    result = []
    q = []

    q.push(node)
    until q.empty?
      n = q.shift

      if n.nil?
        result.push(nil)
      else
        result.push(n.val)
        q.push(n.left)
        q.push(n.right)
      end
    end

    result.pop while !result.empty? && result.last.nil?
    result
  end
end
