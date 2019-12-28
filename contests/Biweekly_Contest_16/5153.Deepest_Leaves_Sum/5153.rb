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
def deepest_leaves_sum(root)
  return 0 if root.nil?

  def max_depth(node, depth = 0)
    if node.nil? then
      depth
    else
      return [
        depth,
        max_depth(node.left, depth + 1),
        max_depth(node.right, depth + 1)
      ].max
    end
  end

  def sum_max_depth(node, depth, max)
    if node.left.nil? and node.right.nil? then
      return depth == max ? node.val : 0
    else
      sum = 0
      sum += sum_max_depth(node.left, depth + 1, max) unless node.left.nil?
      sum += sum_max_depth(node.right, depth + 1, max) unless node.right.nil?
      return sum
    end
  end

  sum_max_depth(root, 1, max_depth(root))
end
