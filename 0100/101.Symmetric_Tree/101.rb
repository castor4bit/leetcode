# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
  return true if root.nil?

  def is_mirrored_tree(p, q)
    if [p, q].include?(nil) then
      p == q
    else
      p.val == q.val \
        and is_mirrored_tree(p.left, q.right) \
        and is_mirrored_tree(p.right, q.left)
    end
  end

  is_mirrored_tree(root.left, root.right)
end
