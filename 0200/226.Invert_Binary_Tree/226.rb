# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
  unless root.nil?
    root.left, root.right = root.right, root.left

    invert_tree(root.left) unless root.left.nil?
    invert_tree(root.right) unless root.right.nil?
  end

  root
end
