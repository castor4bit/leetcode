# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  val = root.val
  min = [p.val, q.val].min
  max = [p.val, q.val].max

  while root.val < min || max < root.val
    root = val < min ? root.right : root.left
    val = root.val
  end

  root
end
