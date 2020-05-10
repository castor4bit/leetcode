# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} s
# @param {TreeNode} t
# @return {Boolean}
def is_subtree(s, t)
  return false if s.nil?

  def equals(s, t)
    return true if s.nil? && t.nil?
    return false if s.nil? || t.nil?

    s.val == t.val && equals(s.left, t.left) && equals(s.right, t.right)
  end

  equals(s, t) || is_subtree(s.left, t) || is_subtree(s.right, t)
end
