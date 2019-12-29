# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Integer[]}
def get_all_elements(root1, root2)

  def _get_all_elements(node)
    return [] if node.nil?

    [node.val] + \
      _get_all_elements(node.left) + \
      _get_all_elements(node.right)
  end

  (_get_all_elements(root1) + _get_all_elements(root2)).sort
end
