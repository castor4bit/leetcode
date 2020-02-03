# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def max_product(root)
  def sum(node)
    s = 0
    q = [node]
    until q.empty?
      n = q.pop
      s += n.val

      q.push(n.left) unless n.left.nil?
      q.push(n.right) unless n.right.nil?
    end

    s
  end

  def dfs(node, allsum)
    return [0, 0] if node.nil?

    p1, s1 = dfs(node.left, allsum)
    p2, s2 = dfs(node.right, allsum)

    s0 = node.val + s1 + s2
    p0 = s0 * (allsum - s0)

    [[p0, p1, p2].max, s0]
  end

  p, = dfs(root, sum(root))
  p % 1000000007
end
