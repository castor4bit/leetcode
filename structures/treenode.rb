class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

class TreeNodeUtil
  def self.array_to_treenode(a, pos = 1)
    _rebuild_array(a) if pos == 1

    val = a[pos - 1]
    return nil if val.nil?

    node = TreeNode.new(val)
    node.left = array_to_treenode(a, pos * 2)
    node.right = array_to_treenode(a, pos * 2 + 1)

    node
  end

  def self._rebuild_array(a)
    depth = 1
    loop do
      base = 2 ** (depth - 1) - 1
      break if base >= a.size

      (base..(base * 2)).each do |i|
        pidx = (i - 1) / 2
        if pidx > 0 && a[pidx].nil?
          a.insert(i, nil)
        end
      end

      break if depth > 5

      depth += 1
    end
    a
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
