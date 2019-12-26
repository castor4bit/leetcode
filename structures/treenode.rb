class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

class TreeNodeUtil
  def self.array_to_treenode(a, pos = 1)
    val = a[pos - 1]
    return nil if val.nil?

    node = TreeNode.new(val)
    node.left = array_to_treenode(a, pos * 2)
    node.right = array_to_treenode(a, pos * 2 + 1)

    node
  end
end
