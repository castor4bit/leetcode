# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} target
# @return {TreeNode}
def remove_leaf_nodes(root, target)
  def _remove_leaf_nodes(node, target)
    return node.val == target if [node.left, node.right].all?(&:nil?)

    node.left = nil if !node.left.nil? && _remove_leaf_nodes(node.left, target)
    node.right = nil if !node.right.nil? && _remove_leaf_nodes(node.right, target)

    _remove_leaf_nodes(node, target) if [node.left, node.right].all?(&:nil?)
  end

  _remove_leaf_nodes(root, target)
  if !root.nil? && root.val == target && [root.left, root.right].all?(&:nil?)
    root = nil
  end

  root
end
