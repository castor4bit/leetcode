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
    def self._treenode_to_array(node)
      return [] if node.nil?

      l = _treenode_to_array(node.left)
      r = _treenode_to_array(node.right)

      result = []
      max_depth = self.max_depth(node)
      (1..max_depth).each do |i|
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

    result.pop while !result.empty? && result.last.nil?
    result
  end

  def self.max_depth(root)
    def self._max_depth(node, depth)
      if node.nil?
        depth
      else
        [
          depth,
          _max_depth(node.left, depth + 1),
          _max_depth(node.right, depth + 1)
        ].max
      end
    end

    _max_depth(root, 0)
  end
end
