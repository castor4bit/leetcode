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
def sum_of_left_leaves(root)
  def _sum_of_left_leaves(node, is_left = false)
    return 0 if node.nil?
    return node.val if [node.left, node.right].all?(&:nil?) && is_left

    _sum_of_left_leaves(node.left, true) \
      + _sum_of_left_leaves(node.right)
  end

  _sum_of_left_leaves(root)
end
