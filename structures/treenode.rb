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

  def self.treenode_to_array(node)

    def self._treenode_to_array(node)
      return [] if node.nil?

      l = self._treenode_to_array(node.left)
      r = self._treenode_to_array(node.right)

      result = []
      max_depth = self.max_depth(node)
      for i in 1..max_depth
        ll = l.empty? ? Array.new(2 ** (i - 1), nil) : l.pop
        rr = r.empty? ? Array.new(2 ** (i - 1), nil) : r.pop
        result.unshift(ll + rr)
      end

      result.push([node.val])
    end

    result = []
    _treenode_to_array(node).reverse.each do |la|
      break if la.compact.empty?
      result += la
    end

    while result.last.nil? do
      result.pop
    end

    result
  end

  def self.max_depth(root)
    def self._max_depth(node, depth)
      if node.nil? then
        depth
      else
        return [
          depth,
          self._max_depth(node.left, depth + 1),
          self._max_depth(node.right, depth + 1)
        ].max
      end
    end

    self._max_depth(root, 0)
  end
end
