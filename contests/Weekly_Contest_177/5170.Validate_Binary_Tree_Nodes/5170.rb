# @param {Integer} n
# @param {Integer[]} left_child
# @param {Integer[]} right_child
# @return {Boolean}
def validate_binary_tree_nodes(n, left_child, right_child)

  def bfs1(node, n, left, right)
    q = [node]
    until q.empty?
      nd = q.pop
      if nd.val == n
        nd.left = TreeNode.new(left) if left != -1
        nd.right = TreeNode.new(right) if right != -1
        return
      end

      q.push(nd.left) unless nd.left.nil?
      q.push(nd.right) unless nd.right.nil?
    end
  end

  def bfs2(node, left_child, right_child)
    h = {}
    q = [node]
    until q.empty?
      nd = q.pop
      next if nd.nil?

      idx = nd.val
      next if h.key?(idx)

      h[idx] = 1
      bfs1(nd, idx, left_child[idx], right_child[idx])
      q.push(nd.left)
      q.push(nd.right)
    end
  end

  root = TreeNode.new(0)
  bfs2(root, left_child, right_child)

  h = Hash.new(0)
  q = [root]
  until q.empty?
    nd = q.pop
    h[nd.val] += 1
    q.push(nd.left) unless nd.left.nil?
    q.push(nd.right) unless nd.right.nil?
  end

  (0..n - 1).each do |i|
    return false if !h.key?(i) || h[i] > 1
  end

  true
end

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end
