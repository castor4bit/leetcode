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
def diameter_of_binary_tree(root)
  return 0 if root.nil?

  def _diameter_of_binary_tree(node, depth = 0, max = 0)
    return [depth, max] if node.nil?

    depth += 1
    max_depth_l, diameter_l = _diameter_of_binary_tree(node.left, depth, max)
    max_depth_r, diameter_r = _diameter_of_binary_tree(node.right, depth, max)

    [
      [max_depth_l, max_depth_r].max,
      [diameter_l, diameter_r, (max_depth_l + max_depth_r - depth * 2)].max
    ]
  end

  _, max = _diameter_of_binary_tree(root)
  max
end
